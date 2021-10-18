import 'package:adb_connect/adb/adb.dart';
import 'package:adb_connect/sandbox/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommandHistory extends StateNotifier<List<LogEntry>>
    implements CommandsObserver {
  CommandHistory() : super([]);

  static int capacity = 100;

  @override
  void didRun(LogEntry entry) {
    final logEntries = [...state, entry];
    state = ensureCapacity(logEntries);
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
