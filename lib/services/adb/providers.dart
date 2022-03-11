import 'package:adb_connect/modules/console/console.dart';
import 'package:adb_connect/services/adb/commands.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final adbProvider = Provider<Adb>((ref) {
  final adb = Adb(
    verbose: kDebugMode,
    observers: [ref.read(logsProvider.notifier)],
  );

  ref.onDispose(adb.dispose);

  return adb;
});
