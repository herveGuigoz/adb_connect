import 'dart:async';

import 'package:adb_connect/adb/adb.dart';
import 'package:adb_connect/adb/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kPollingDuration = Duration(seconds: 5);

class DevicesManager extends StateNotifier<List<Device>> {
  DevicesManager() : super([]);
}

class AdbService extends DevicesManager with PoolingMixin {
  AdbService(this.adb);

  @override
  @protected
  final Adb adb;

  Future<void> loadDevices() async {
    if (!adb.isRunning) await adb.init();
    state = await adb.devices();
    startPollingDevices();
  }

  Future<void> restartAdb() async {
    stopPollingDevices();
    await adb.disconnectAllDevices();
    await adb.killServer();
    await loadDevices();
  }

  Future<void> connectDevice(Device device) async {
    stopPollingDevices();
    await adb.connect(device);
    await loadDevices();
  }

  Future<void> disconnectDevice(Device device) async {
    await adb.disconnect(device);
    await loadDevices();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

mixin PoolingMixin on DevicesManager {
  Adb get adb;

  Timer? _timer;

  void startPollingDevices() {
    _timer = Timer.periodic(kPollingDuration, (_) async {
      if (!state.any((d) => d.connectionType is Wifi)) {
        state = await adb.devices();
      }
    });
  }

  void stopPollingDevices() {
    _timer?.cancel();
  }
}
