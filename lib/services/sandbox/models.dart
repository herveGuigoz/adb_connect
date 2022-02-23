part of 'sandbox.dart';

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

  String get stringify => "$executable ${arguments.join(' ')}";
}

@freezed
class CommandResult with _$CommandResult {
   const CommandResult._();
   
  const factory CommandResult.success({
    required int exitCode,
    required List<String> output,
  }) = CommandSucceed;

  const factory CommandResult.error({
    required int exitCode,
    required List<String> output,
  }) = CommandError;

  String get stringify => output.isEmpty ? '' : output.join(r'\n');
}

@freezed
class LogEntry with _$LogEntry {
  const factory LogEntry.command({required String value}) = _CommandLogEntry;
  const factory LogEntry.stderr({required String value}) = _StdrLogEntry;
  const factory LogEntry.stdout({required String value}) = _StdoutLogEntry;
}
