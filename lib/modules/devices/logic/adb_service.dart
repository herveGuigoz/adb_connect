import 'dart:async';

import 'package:adb_connect/adb/adb.dart';
import 'package:adb_connect/adb/models.dart';
import 'package:adb_connect/modules/devices/logic/providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kPollingDuration = Duration(seconds: 3);

class AdbService extends StateNotifier<List<Device>> {
  AdbService(this.adb) : super([]) {
    _startPollingDevices();
  }

  @protected
  final Adb adb;

  late final Timer _timer;

  void _startPollingDevices() {
    _timer = Timer.periodic(kPollingDuration, (_) async {
      if (!adb.isRunning) await adb.init();
      if (state.isEmpty) state = await adb.devices();
    });
  }

  Future<void> refreshDevices() async {
    state = await adb.devices();
  }

  Future<void> restartAdb() async {
    await adb.disconnectAllDevices();
    await adb.killServer();
    await refreshDevices();
  }

  Future<void> connectDevice(Device device) async {
    await adb.connect(device);
    await refreshDevices();
  }

  Future<void> disconnectDevice(Device device) async {
    await adb.disconnect(device);
    await refreshDevices();
  }

  @override
  void dispose() {
    _timer.cancel();
    Future.sync(adb.dispose);
    super.dispose();
  }
}

extension AdbActions on WidgetRef {
  Future<void> refreshDevices() {
    return read(adbServiceProvider.notifier).refreshDevices();
  }

  Future<void> restartAdb() {
    return read(adbServiceProvider.notifier).restartAdb();
  }

  Future<void> connectDevice(Device device) {
    return read(adbServiceProvider.notifier).connectDevice(device);
  }

  Future<void> disconnectDevice(Device device) {
    return read(adbServiceProvider.notifier).disconnectDevice(device);
  }
}
