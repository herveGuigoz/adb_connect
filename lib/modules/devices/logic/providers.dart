import 'package:adb_connect/adb/models.dart';
import 'package:adb_connect/adb/providers.dart';
import 'package:adb_connect/modules/devices/logic/adb_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adbServiceProvider = StateNotifierProvider<AdbService, List<Device>>(
  (ref) => AdbService(ref.watch(adbProvider)),
);

final isDeviceConnectedProvider = Provider.family<bool, Device>((ref, it) {
  final other = ref.watch(adbServiceProvider);
  return it.isWifi ||
      other.where((device) => device.isWifi).any((device) =>
          device.serialNumber == it.serialNumber &&
          device.address == it.address);
});

extension AdbActions on WidgetRef {
  Future<void> loadDevices() {
    return read(adbServiceProvider.notifier).loadDevices();
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
