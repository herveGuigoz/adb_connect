import 'package:adb_connect/modules/console/logic/history.dart';
import 'package:adb_connect/services/sandbox/sandbox.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final logsProvider = StateNotifierProvider<CommandHistory, List<LogEntry>>(
  (ref) => CommandHistory(),
);

extension HistoryActions on WidgetRef {
  void clearLogs() {
    return read(logsProvider.notifier).clear();
  }
}
