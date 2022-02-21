import 'package:adb_connect/services/adb/commands.dart';
import 'package:adb_connect/services/sandbox/sandbox.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommandHistory extends StateNotifier<List<LogEntry>>
    implements CommandsObserver {
  CommandHistory() : super([]);

  static int capacity = 100;

  @override
  void didStart(LogEntry entry) => add(entry);

  @override
  void didRun(LogEntry entry) => add(entry);

  @protected
  void add(LogEntry entry) {
    if (entry.value.isNotEmpty) {
      final logEntries = [...state, entry];
      state = ensureCapacity(logEntries);
    }
  }

  void clear() {
    state = [];
  }

  @protected
  List<LogEntry> ensureCapacity(List<LogEntry> logEntries) {
    if (logEntries.length > capacity) {
      logEntries.removeAt(0);
    }

    return logEntries;
  }
}
