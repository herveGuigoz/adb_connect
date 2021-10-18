import 'package:adb_connect/adb/adb.dart';

import 'package:adb_connect/adb/models.dart';
import 'package:adb_connect/modules/devices/logic/adb_service.dart';
import 'package:adb_connect/modules/logs/logic/providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adbServiceProvider = StateNotifierProvider<AdbService, List<Device>>(
  (ref) => AdbService(Adb(
    workersCount: 2,
    verbose: kDebugMode,
    observers: [ref.read(logsProvider.notifier)],
  )),
);

final isDeviceConnectedProvider = Provider.family<bool, Device>((ref, it) {
  final other = ref.watch(adbServiceProvider);
  return it.isWifi ||
      other.where((device) => device.isWifi).any((device) =>
          device.serialNumber == it.serialNumber &&
          device.address == it.address);
});