import 'dart:async';

import 'package:adb_connect/services/adb/adb.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kPollingDuration = Duration(seconds: 10);

class DevicesManager extends StateNotifier<List<Device>> {
  DevicesManager(this.adb) : super([]) {
    startPollingDevices();
  }

  @protected
  final Adb adb;

  Timer? _timer;

  Future<void> loadDevices() async {
    state = await adb.devices();
  }

  void startPollingDevices() {
    _timer?.cancel();
    _timer = Timer.periodic(kPollingDuration, (_) async {
      if (!adb.isProcessing) await loadDevices();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

class AdbService extends DevicesManager {
  AdbService(Adb adb) : super(adb);

  Future<void> restartAdb() async {
    await adb.disconnectAllDevices();
    await adb.killServer();
    await loadDevices();
  }

  Future<void> connectDevice(Device device) async {
    await adb.connect(device);
    await loadDevices();
  }

  Future<void> disconnectDevice(Device device) async {
    await adb.disconnect(device);
    await loadDevices();
  }
}
