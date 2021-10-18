import 'package:adb_connect/adb/models.dart';

class PinDeviceService {
  final pinnedDevices = <Device>[];

  void addPreviouslyConnectedDevices(List<Device> devices) {
    for (final device in devices) {
      if (device.isWifi) continue;
      // if (device.address.ip != null) continue;
      if (pinnedDevices.contains(device)) continue;
      pinnedDevices.add(device);
    }
  }

  void removePreviouslyConnectedDevice(Device device) {
    pinnedDevices.remove(device);
  }
}
