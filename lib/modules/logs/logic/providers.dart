import 'package:adb_connect/modules/logs/logic/history.dart';
import 'package:adb_connect/sandbox/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final logsProvider = StateNotifierProvider<CommandHistory, List<LogEntry>>(
  (ref) => CommandHistory(),
);
