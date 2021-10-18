import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class Command with _$Command {
  const factory Command({
    required String executable,
    required List<String> arguments,
  }) = _Command;

  const Command._();

  factory Command.rawString(String value) {
    final arguments = value.split(' ');
    final executable = arguments.removeAt(0);
    return Command(arguments: arguments, executable: executable);
  }
}

@freezed
class CommandResult with _$CommandResult {
  const factory CommandResult({
    required int exitCode,
    required List<String> output,
  }) = _CommandResult;
}

@freezed
class LogEntry with _$LogEntry {
  const factory LogEntry({
    required Command command,
    required CommandResult result,
  }) = _LogEntry;
}
