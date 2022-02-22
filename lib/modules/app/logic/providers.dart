import 'package:adb_connect/modules/devices/devices.dart';
import 'package:adb_connect/services/adb/adb.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Initialize sandbox workers and load devices.
final appStateProvider = FutureProvider((ref) async {
  final adb = ref.watch(adbProvider);

  if (!await adb.installed()) throw AdbNotFound();

  return ref.read(adbServiceProvider.notifier).loadDevices();
});

class AdbNotFound implements Exception {}
