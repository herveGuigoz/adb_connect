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

class _$_CommandResult extends _CommandResult {
  const _$_CommandResult({required this.exitCode, required this.output})
      : super._();

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

abstract class _CommandResult extends CommandResult {
  const factory _CommandResult(
      {required int exitCode, required List<String> output}) = _$_CommandResult;
  const _CommandResult._() : super._();

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

  _CommandLogEntry command({required String value}) {
    return _CommandLogEntry(
      value: value,
    );
  }

  _StdrLogEntry stderr({required String value}) {
    return _StdrLogEntry(
      value: value,
    );
  }

  _StdoutLogEntry stdout({required String value}) {
    return _StdoutLogEntry(
      value: value,
    );
  }
}

/// @nodoc
const $LogEntry = _$LogEntryTearOff();

/// @nodoc
mixin _$LogEntry {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) command,
    required TResult Function(String value) stderr,
    required TResult Function(String value) stdout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommandLogEntry value) command,
    required TResult Function(_StdrLogEntry value) stderr,
    required TResult Function(_StdoutLogEntry value) stdout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogEntryCopyWith<LogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEntryCopyWith<$Res> {
  factory $LogEntryCopyWith(LogEntry value, $Res Function(LogEntry) then) =
      _$LogEntryCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$LogEntryCopyWithImpl<$Res> implements $LogEntryCopyWith<$Res> {
  _$LogEntryCopyWithImpl(this._value, this._then);

  final LogEntry _value;
  // ignore: unused_field
  final $Res Function(LogEntry) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CommandLogEntryCopyWith<$Res>
    implements $LogEntryCopyWith<$Res> {
  factory _$CommandLogEntryCopyWith(
          _CommandLogEntry value, $Res Function(_CommandLogEntry) then) =
      __$CommandLogEntryCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$CommandLogEntryCopyWithImpl<$Res> extends _$LogEntryCopyWithImpl<$Res>
    implements _$CommandLogEntryCopyWith<$Res> {
  __$CommandLogEntryCopyWithImpl(
      _CommandLogEntry _value, $Res Function(_CommandLogEntry) _then)
      : super(_value, (v) => _then(v as _CommandLogEntry));

  @override
  _CommandLogEntry get _value => super._value as _CommandLogEntry;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_CommandLogEntry(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommandLogEntry implements _CommandLogEntry {
  const _$_CommandLogEntry({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'LogEntry.command(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommandLogEntry &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  _$CommandLogEntryCopyWith<_CommandLogEntry> get copyWith =>
      __$CommandLogEntryCopyWithImpl<_CommandLogEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) command,
    required TResult Function(String value) stderr,
    required TResult Function(String value) stdout,
  }) {
    return command(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
  }) {
    return command?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
    required TResult orElse(),
  }) {
    if (command != null) {
      return command(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommandLogEntry value) command,
    required TResult Function(_StdrLogEntry value) stderr,
    required TResult Function(_StdoutLogEntry value) stdout,
  }) {
    return command(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
  }) {
    return command?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
    required TResult orElse(),
  }) {
    if (command != null) {
      return command(this);
    }
    return orElse();
  }
}

abstract class _CommandLogEntry implements LogEntry {
  const factory _CommandLogEntry({required String value}) = _$_CommandLogEntry;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$CommandLogEntryCopyWith<_CommandLogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StdrLogEntryCopyWith<$Res> implements $LogEntryCopyWith<$Res> {
  factory _$StdrLogEntryCopyWith(
          _StdrLogEntry value, $Res Function(_StdrLogEntry) then) =
      __$StdrLogEntryCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$StdrLogEntryCopyWithImpl<$Res> extends _$LogEntryCopyWithImpl<$Res>
    implements _$StdrLogEntryCopyWith<$Res> {
  __$StdrLogEntryCopyWithImpl(
      _StdrLogEntry _value, $Res Function(_StdrLogEntry) _then)
      : super(_value, (v) => _then(v as _StdrLogEntry));

  @override
  _StdrLogEntry get _value => super._value as _StdrLogEntry;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_StdrLogEntry(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StdrLogEntry implements _StdrLogEntry {
  const _$_StdrLogEntry({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'LogEntry.stderr(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StdrLogEntry &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  _$StdrLogEntryCopyWith<_StdrLogEntry> get copyWith =>
      __$StdrLogEntryCopyWithImpl<_StdrLogEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) command,
    required TResult Function(String value) stderr,
    required TResult Function(String value) stdout,
  }) {
    return stderr(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
  }) {
    return stderr?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
    required TResult orElse(),
  }) {
    if (stderr != null) {
      return stderr(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommandLogEntry value) command,
    required TResult Function(_StdrLogEntry value) stderr,
    required TResult Function(_StdoutLogEntry value) stdout,
  }) {
    return stderr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
  }) {
    return stderr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
    required TResult orElse(),
  }) {
    if (stderr != null) {
      return stderr(this);
    }
    return orElse();
  }
}

abstract class _StdrLogEntry implements LogEntry {
  const factory _StdrLogEntry({required String value}) = _$_StdrLogEntry;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$StdrLogEntryCopyWith<_StdrLogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StdoutLogEntryCopyWith<$Res>
    implements $LogEntryCopyWith<$Res> {
  factory _$StdoutLogEntryCopyWith(
          _StdoutLogEntry value, $Res Function(_StdoutLogEntry) then) =
      __$StdoutLogEntryCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$StdoutLogEntryCopyWithImpl<$Res> extends _$LogEntryCopyWithImpl<$Res>
    implements _$StdoutLogEntryCopyWith<$Res> {
  __$StdoutLogEntryCopyWithImpl(
      _StdoutLogEntry _value, $Res Function(_StdoutLogEntry) _then)
      : super(_value, (v) => _then(v as _StdoutLogEntry));

  @override
  _StdoutLogEntry get _value => super._value as _StdoutLogEntry;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_StdoutLogEntry(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StdoutLogEntry implements _StdoutLogEntry {
  const _$_StdoutLogEntry({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'LogEntry.stdout(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StdoutLogEntry &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  _$StdoutLogEntryCopyWith<_StdoutLogEntry> get copyWith =>
      __$StdoutLogEntryCopyWithImpl<_StdoutLogEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) command,
    required TResult Function(String value) stderr,
    required TResult Function(String value) stdout,
  }) {
    return stdout(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
  }) {
    return stdout?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? command,
    TResult Function(String value)? stderr,
    TResult Function(String value)? stdout,
    required TResult orElse(),
  }) {
    if (stdout != null) {
      return stdout(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommandLogEntry value) command,
    required TResult Function(_StdrLogEntry value) stderr,
    required TResult Function(_StdoutLogEntry value) stdout,
  }) {
    return stdout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
  }) {
    return stdout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommandLogEntry value)? command,
    TResult Function(_StdrLogEntry value)? stderr,
    TResult Function(_StdoutLogEntry value)? stdout,
    required TResult orElse(),
  }) {
    if (stdout != null) {
      return stdout(this);
    }
    return orElse();
  }
}

abstract class _StdoutLogEntry implements LogEntry {
  const factory _StdoutLogEntry({required String value}) = _$_StdoutLogEntry;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$StdoutLogEntryCopyWith<_StdoutLogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
