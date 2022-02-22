import 'dart:async';

import 'package:adb_connect/services/adb/models.dart';
import 'package:adb_connect/services/sandbox/sandbox.dart';
import 'package:flutter/foundation.dart';

const adbDefaultPort = 5555;

class Adb extends CommandExecutor {
  Adb({
    int workersCount = 3,
    bool verbose = false,
    List<CommandsObserver> observers = const [],
  }) : super(workersCount, verbose: verbose, observers: observers);

  Future<bool> installed() async {
    final result = await exec(Command.rawString('which adb'));
    return result.exitCode == 0;
  }

  Future<CommandResult> connect(Device device) async {
    if (device.isUsb) {
      await execAndLog(
        Command.rawString('adb -s ${device.id} tcpip ${device.port}'),
      );

      // wait to avoid `connection refused` error
      await Future.delayed(const Duration(seconds: 1), () {});
    }

    assert(device.address != null, 'Could not connect device, ip is unknown');

    return execAndLog(
      Command.rawString('adb connect ${device.address!.ip}:${device.port}'),
    );
  }

  Future<CommandResult> disconnect(Device device) {
    assert(
      device.address != null,
      'Could not disconnect device, ip is unknown',
    );
    return execAndLog(
      Command.rawString('adb disconnect ${device.address!.ip}:${device.port}'),
    );
  }

  Future<CommandResult> disconnectAllDevices() {
    return execAndLog(Command.rawString('adb disconnect'));
  }

  Future<CommandResult> killServer() {
    return execAndLog(Command.rawString('adb kill-server'));
  }

  Future<List<Device>> devices() async {
    final devices = <Device>[];
    final command = Command.rawString('adb devices');
    final devicesResult = await exec(command);

    final devicesIds = devicesResult.output
        .sublist(1)
        .mapNotNull((line) => AdbRegex.deviceId.firstMatch(line)?.group(1));

    for (final id in devicesIds) {
      final ipAddressOrNull = AdbRegex.ipAddress.firstMatch(id);
      final ip = ipAddressOrNull?.group(1);
      final port = ipAddressOrNull?.group(2)?.toInt();

      final connectionType = ipAddressOrNull != null
          ? const Connection.wifi()
          : const Connection.usb();

      final address = await addressOrNull(id);

      if (connectionType is Wifi && address?.ip != ip) {
        continue;
      }

      final futures = await Future.wait<String>([
        model(id),
        manufacturer(id),
        serialNumber(id),
        androidVersion(id),
        apiLevel(id),
      ]);

      devices.add(
        Device(
          id: id,
          address: address,
          port: port ?? adbDefaultPort,
          model: futures[0],
          manufacturer: futures[1],
          serialNumber: futures[2],
          androidVersion: futures[3],
          apiLevel: futures[4],
          connectionType: connectionType,
        ),
      );
    }

    return devices;
  }

  Future<Address?> addressOrNull(String deviceId) async {
    final result = await exec(
      Command.rawString('adb -s $deviceId shell ip route'),
    );

    if (result.output.isNotEmpty) {
      final match = AdbRegex.addressLine.firstMatch(result.output.first);
      if (match == null && match!.groupCount != 2) {
        throw Exception('Address format exception');
      }

      return Address(interface: match.group(1)!, ip: match.group(2)!);
    }

    return null;
  }

  Future<String> model(String deviceId) async {
    return _runGuarded(
      Command.rawString('adb -s $deviceId shell getprop ro.product.model'),
    );
  }

  Future<String> manufacturer(String deviceId) {
    return _runGuarded(
      Command.rawString(
        'adb -s $deviceId shell getprop ro.product.manufacturer',
      ),
    );
  }

  Future<String> serialNumber(String deviceId) {
    return _runGuarded(
      Command.rawString('adb -s $deviceId shell getprop ro.serialno'),
    );
  }

  Future<String> androidVersion(String deviceId) {
    return _runGuarded(
      Command.rawString(
        'adb -s $deviceId shell getprop ro.build.version.release',
      ),
    );
  }

  Future<String> apiLevel(String deviceId) {
    return _runGuarded(
      Command.rawString('adb -s $deviceId shell getprop ro.build.version.sdk'),
    );
  }

  Future<String?> batteryLevel(String deviceId) async {
    final regex = RegExp(r'(?<=[l|L]evel:[\s]?)[0-9\.]*');
    final result = await exec(
      Command.rawString('adb -s $deviceId shell dumpsys battery'),
    );
    for (final raw in result.output) {
      if (regex.hasMatch(raw)) return raw;
    }
    return null;
  }

  Future<String> _runGuarded(Command command) async {
    final result = await exec(command);

    if (result.exitCode > 0 || result.output.isEmpty) {
      throw AdbException(command, result);
    }

    return result.output.first;
  }
}

abstract class CommandExecutor {
  CommandExecutor(
    int workersCount, {
    bool verbose = false,
    this.observers = const [],
  }) : _sandbox = Sanbox(workersCount: workersCount, verbose: verbose);

  final Sanbox _sandbox;

  final List<CommandsObserver> observers;

  bool get isRunning => _sandbox.isRunning;
  bool get isProcessing => _sandbox.isProcessing;

  @protected
  Future<CommandResult> exec(Command command) async {
    if (!isRunning) await _sandbox.start();

    late final CommandResult result;

    try {
      result = await _sandbox.run(command);
    } on RemoteExecutionError catch (error) {
      result = CommandResult(exitCode: 1, output: [error.toString()]);
    }

    return result;
  }

  @protected
  Future<CommandResult> execAndLog(Command command) async {
    for (final observer in observers) {
      observer.didStart(LogEntry.command(value: command.stringify));
    }

    final result = await exec(command);

    for (final observer in observers) {
      observer.didRun(
        result.exitCode > 0
            ? LogEntry.stderr(value: result.stringify)
            : LogEntry.stdout(value: result.stringify),
      );
    }

    return result;
  }

  Future<void> dispose() async {
    await _sandbox.dispose();
  }
}

abstract class CommandsObserver {
  const CommandsObserver();

  void didStart(LogEntry entry) {}

  void didRun(LogEntry entry) {}
}

class AdbException implements Exception {
  AdbException(this.command, this.result);

  final Command command;
  final CommandResult result;

  @override
  String toString() {
    return 'AdbException( '
        'command: $command '
        'exitCode: ${result.exitCode}, '
        'output: ${result.output}, '
        ')';
  }
}

abstract class AdbRegex {
  static RegExp deviceId = RegExp(r'(.*?)\s+device');

  static RegExp addressLine = RegExp(
    r'.*dev\s*(\S+)\s*.*\b(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\b.*',
  );

  static RegExp ipAddress = RegExp(
    r'(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}):(\d{1,5})',
  );
}

extension on List<String> {
  List<T> mapNotNull<T>(T? Function(String) cb) {
    final result = <T>[];
    for (final line in this) {
      final value = cb(line);
      if (value != null) result.add(value);
    }
    return result;
  }
}

extension on Object {
  int toInt() => double.parse(toString()).toInt();
}
