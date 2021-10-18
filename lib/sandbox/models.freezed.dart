// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommandTearOff {
  const _$CommandTearOff();

  _Command call({required String executable, required List<String> arguments}) {
    return _Command(
      executable: executable,
      arguments: arguments,
    );
  }
}

/// @nodoc
const $Command = _$CommandTearOff();

/// @nodoc
mixin _$Command {
  String get executable => throw _privateConstructorUsedError;
  List<String> get arguments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommandCopyWith<Command> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandCopyWith<$Res> {
  factory $CommandCopyWith(Command value, $Res Function(Command) then) =
      _$CommandCopyWithImpl<$Res>;
  $Res call({String executable, List<String> arguments});
}

/// @nodoc
class _$CommandCopyWithImpl<$Res> implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._value, this._then);

  final Command _value;
  // ignore: unused_field
  final $Res Function(Command) _then;

  @override
  $Res call({
    Object? executable = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_value.copyWith(
      executable: executable == freezed
          ? _value.executable
          : executable // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: arguments == freezed
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CommandCopyWith<$Res> implements $CommandCopyWith<$Res> {
  factory _$CommandCopyWith(_Command value, $Res Function(_Command) then) =
      __$CommandCopyWithImpl<$Res>;
  @override
  $Res call({String executable, List<String> arguments});
}

/// @nodoc
class __$CommandCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$CommandCopyWith<$Res> {
  __$CommandCopyWithImpl(_Command _value, $Res Function(_Command) _then)
      : super(_value, (v) => _then(v as _Command));

  @override
  _Command get _value => super._value as _Command;

  @override
  $Res call({
    Object? executable = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_Command(
      executable: executable == freezed
          ? _value.executable
          : executable // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: arguments == freezed
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Command extends _Command {
  const _$_Command({required this.executable, required this.arguments})
      : super._();

  @override
  final String executable;
  @override
  final List<String> arguments;

  @override
  String toString() {
    return 'Command(executable: $executable, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Command &&
            (identical(other.executable, executable) ||
                other.executable == executable) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, executable, const DeepCollectionEquality().hash(arguments));

  @JsonKey(ignore: true)
  @override
  _$CommandCopyWith<_Command> get copyWith =>
      __$CommandCopyWithImpl<_Command>(this, _$identity);
}

abstract class _Command extends Command {
  const factory _Command(
      {required String executable,
      required List<String> arguments}) = _$_Command;
  const _Command._() : super._();

  @override
  String get executable;
  @override
  List<String> get arguments;
  @override
  @JsonKey(ignore: true)
  _$CommandCopyWith<_Command> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommandResultTearOff {
  const _$CommandResultTearOff();

  _CommandResult call({required int exitCode, required List<String> output}) {
    return _CommandResult(
      exitCode: exitCode,
      output: output,
    );
  }
}

/// @nodoc
const $CommandResult = _$CommandResultTearOff();

/// @nodoc
mixin _$CommandResult {
  int get exitCode => throw _privateConstructorUsedError;
  List<String> get output => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommandResultCopyWith<CommandResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandResultCopyWith<$Res> {
  factory $CommandResultCopyWith(
          CommandResult value, $Res Function(CommandResult) then) =
      _$CommandResultCopyWithImpl<$Res>;
  $Res call({int exitCode, List<String> output});
}

/// @nodoc
class _$CommandResultCopyWithImpl<$Res>
    implements $CommandResultCopyWith<$Res> {
  _$CommandResultCopyWithImpl(this._value, this._then);

  final CommandResult _value;
  // ignore: unused_field
  final $Res Function(CommandResult) _then;

  @override
  $Res call({
    Object? exitCode = freezed,
    Object? output = freezed,
  }) {
    return _then(_value.copyWith(
      exitCode: exitCode == freezed
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int,
      output: output == freezed
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CommandResultCopyWith<$Res>
    implements $CommandResultCopyWith<$Res> {
  factory _$CommandResultCopyWith(
          _CommandResult value, $Res Function(_CommandResult) then) =
      __$CommandResultCopyWithImpl<$Res>;
  @override
  $Res call({int exitCode, List<String> output});
}

/// @nodoc
class __$CommandResultCopyWithImpl<$Res>
    extends _$CommandResultCopyWithImpl<$Res>
    implements _$CommandResultCopyWith<$Res> {
  __$CommandResultCopyWithImpl(
      _CommandResult _value, $Res Function(_CommandResult) _then)
      : super(_value, (v) => _then(v as _CommandResult));

  @override
  _CommandResult get _value => super._value as _CommandResult;

  @override
  $Res call({
    Object? exitCode = freezed,
    Object? output = freezed,
  }) {
    return _then(_CommandResult(
      exitCode: exitCode == freezed
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int,
      output: output == freezed
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_CommandResult implements _CommandResult {
  const _$_CommandResult({required this.exitCode, required this.output});

  @override
  final int exitCode;
  @override
  final List<String> output;

  @override
  String toString() {
    return 'CommandResult(exitCode: $exitCode, output: $output)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommandResult &&
            (identical(other.exitCode, exitCode) ||
                other.exitCode == exitCode) &&
            const DeepCollectionEquality().equals(other.output, output));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, exitCode, const DeepCollectionEquality().hash(output));

  @JsonKey(ignore: true)
  @override
  _$CommandResultCopyWith<_CommandResult> get copyWith =>
      __$CommandResultCopyWithImpl<_CommandResult>(this, _$identity);
}

abstract class _CommandResult implements CommandResult {
  const factory _CommandResult(
      {required int exitCode, required List<String> output}) = _$_CommandResult;

  @override
  int get exitCode;
  @override
  List<String> get output;
  @override
  @JsonKey(ignore: true)
  _$CommandResultCopyWith<_CommandResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LogEntryTearOff {
  const _$LogEntryTearOff();

  _LogEntry call({required Command command, required CommandResult result}) {
    return _LogEntry(
      command: command,
      result: result,
    );
  }
}

/// @nodoc
const $LogEntry = _$LogEntryTearOff();

/// @nodoc
mixin _$LogEntry {
  Command get command => throw _privateConstructorUsedError;
  CommandResult get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogEntryCopyWith<LogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEntryCopyWith<$Res> {
  factory $LogEntryCopyWith(LogEntry value, $Res Function(LogEntry) then) =
      _$LogEntryCopyWithImpl<$Res>;
  $Res call({Command command, CommandResult result});

  $CommandCopyWith<$Res> get command;
  $CommandResultCopyWith<$Res> get result;
}

/// @nodoc
class _$LogEntryCopyWithImpl<$Res> implements $LogEntryCopyWith<$Res> {
  _$LogEntryCopyWithImpl(this._value, this._then);

  final LogEntry _value;
  // ignore: unused_field
  final $Res Function(LogEntry) _then;

  @override
  $Res call({
    Object? command = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as Command,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CommandResult,
    ));
  }

  @override
  $CommandCopyWith<$Res> get command {
    return $CommandCopyWith<$Res>(_value.command, (value) {
      return _then(_value.copyWith(command: value));
    });
  }

  @override
  $CommandResultCopyWith<$Res> get result {
    return $CommandResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$LogEntryCopyWith<$Res> implements $LogEntryCopyWith<$Res> {
  factory _$LogEntryCopyWith(_LogEntry value, $Res Function(_LogEntry) then) =
      __$LogEntryCopyWithImpl<$Res>;
  @override
  $Res call({Command command, CommandResult result});

  @override
  $CommandCopyWith<$Res> get command;
  @override
  $CommandResultCopyWith<$Res> get result;
}

/// @nodoc
class __$LogEntryCopyWithImpl<$Res> extends _$LogEntryCopyWithImpl<$Res>
    implements _$LogEntryCopyWith<$Res> {
  __$LogEntryCopyWithImpl(_LogEntry _value, $Res Function(_LogEntry) _then)
      : super(_value, (v) => _then(v as _LogEntry));

  @override
  _LogEntry get _value => super._value as _LogEntry;

  @override
  $Res call({
    Object? command = freezed,
    Object? result = freezed,
  }) {
    return _then(_LogEntry(
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as Command,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CommandResult,
    ));
  }
}

/// @nodoc

class _$_LogEntry implements _LogEntry {
  const _$_LogEntry({required this.command, required this.result});

  @override
  final Command command;
  @override
  final CommandResult result;

  @override
  String toString() {
    return 'LogEntry(command: $command, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogEntry &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, command, result);

  @JsonKey(ignore: true)
  @override
  _$LogEntryCopyWith<_LogEntry> get copyWith =>
      __$LogEntryCopyWithImpl<_LogEntry>(this, _$identity);
}

abstract class _LogEntry implements LogEntry {
  const factory _LogEntry(
      {required Command command, required CommandResult result}) = _$_LogEntry;

  @override
  Command get command;
  @override
  CommandResult get result;
  @override
  @JsonKey(ignore: true)
  _$LogEntryCopyWith<_LogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
