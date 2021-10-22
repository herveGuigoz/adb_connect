import 'package:adb_connect/modules/devices/devices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Initialize sandbox workers and load devices.
final appStateProvider = FutureProvider((ref) async {
  return ref.read(adbServiceProvider.notifier).loadDevices();
});
