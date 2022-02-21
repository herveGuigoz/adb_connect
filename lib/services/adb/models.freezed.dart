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
class _$DeviceTearOff {
  const _$DeviceTearOff();

  _Device call(
      {required String id,
      Address? address,
      required int port,
      required String model,
      required String manufacturer,
      required String serialNumber,
      required String androidVersion,
      required String apiLevel,
      required Connection connectionType,
      bool isPinnedDevice = false}) {
    return _Device(
      id: id,
      address: address,
      port: port,
      model: model,
      manufacturer: manufacturer,
      serialNumber: serialNumber,
      androidVersion: androidVersion,
      apiLevel: apiLevel,
      connectionType: connectionType,
      isPinnedDevice: isPinnedDevice,
    );
  }
}

/// @nodoc
const $Device = _$DeviceTearOff();

/// @nodoc
mixin _$Device {
  String get id => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  String get serialNumber => throw _privateConstructorUsedError;
  String get androidVersion => throw _privateConstructorUsedError;
  String get apiLevel => throw _privateConstructorUsedError;
  Connection get connectionType => throw _privateConstructorUsedError;
  bool get isPinnedDevice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Address? address,
      int port,
      String model,
      String manufacturer,
      String serialNumber,
      String androidVersion,
      String apiLevel,
      Connection connectionType,
      bool isPinnedDevice});

  $AddressCopyWith<$Res>? get address;
  $ConnectionCopyWith<$Res> get connectionType;
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res> implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  final Device _value;
  // ignore: unused_field
  final $Res Function(Device) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? port = freezed,
    Object? model = freezed,
    Object? manufacturer = freezed,
    Object? serialNumber = freezed,
    Object? androidVersion = freezed,
    Object? apiLevel = freezed,
    Object? connectionType = freezed,
    Object? isPinnedDevice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumber: serialNumber == freezed
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      androidVersion: androidVersion == freezed
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: apiLevel == freezed
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      connectionType: connectionType == freezed
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as Connection,
      isPinnedDevice: isPinnedDevice == freezed
          ? _value.isPinnedDevice
          : isPinnedDevice // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $ConnectionCopyWith<$Res> get connectionType {
    return $ConnectionCopyWith<$Res>(_value.connectionType, (value) {
      return _then(_value.copyWith(connectionType: value));
    });
  }
}

/// @nodoc
abstract class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) then) =
      __$DeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Address? address,
      int port,
      String model,
      String manufacturer,
      String serialNumber,
      String androidVersion,
      String apiLevel,
      Connection connectionType,
      bool isPinnedDevice});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $ConnectionCopyWith<$Res> get connectionType;
}

/// @nodoc
class __$DeviceCopyWithImpl<$Res> extends _$DeviceCopyWithImpl<$Res>
    implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(_Device _value, $Res Function(_Device) _then)
      : super(_value, (v) => _then(v as _Device));

  @override
  _Device get _value => super._value as _Device;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? port = freezed,
    Object? model = freezed,
    Object? manufacturer = freezed,
    Object? serialNumber = freezed,
    Object? androidVersion = freezed,
    Object? apiLevel = freezed,
    Object? connectionType = freezed,
    Object? isPinnedDevice = freezed,
  }) {
    return _then(_Device(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumber: serialNumber == freezed
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      androidVersion: androidVersion == freezed
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
      apiLevel: apiLevel == freezed
          ? _value.apiLevel
          : apiLevel // ignore: cast_nullable_to_non_nullable
              as String,
      connectionType: connectionType == freezed
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as Connection,
      isPinnedDevice: isPinnedDevice == freezed
          ? _value.isPinnedDevice
          : isPinnedDevice // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Device extends _Device {
  const _$_Device(
      {required this.id,
      this.address,
      required this.port,
      required this.model,
      required this.manufacturer,
      required this.serialNumber,
      required this.androidVersion,
      required this.apiLevel,
      required this.connectionType,
      this.isPinnedDevice = false})
      : super._();

  @override
  final String id;
  @override
  final Address? address;
  @override
  final int port;
  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final String serialNumber;
  @override
  final String androidVersion;
  @override
  final String apiLevel;
  @override
  final Connection connectionType;
  @JsonKey(defaultValue: false)
  @override
  final bool isPinnedDevice;

  @override
  String toString() {
    return 'Device(id: $id, address: $address, port: $port, model: $model, manufacturer: $manufacturer, serialNumber: $serialNumber, androidVersion: $androidVersion, apiLevel: $apiLevel, connectionType: $connectionType, isPinnedDevice: $isPinnedDevice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Device &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.androidVersion, androidVersion) ||
                other.androidVersion == androidVersion) &&
            (identical(other.apiLevel, apiLevel) ||
                other.apiLevel == apiLevel) &&
            (identical(other.connectionType, connectionType) ||
                other.connectionType == connectionType) &&
            (identical(other.isPinnedDevice, isPinnedDevice) ||
                other.isPinnedDevice == isPinnedDevice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      address,
      port,
      model,
      manufacturer,
      serialNumber,
      androidVersion,
      apiLevel,
      connectionType,
      isPinnedDevice);

  @JsonKey(ignore: true)
  @override
  _$DeviceCopyWith<_Device> get copyWith =>
      __$DeviceCopyWithImpl<_Device>(this, _$identity);
}

abstract class _Device extends Device {
  const factory _Device(
      {required String id,
      Address? address,
      required int port,
      required String model,
      required String manufacturer,
      required String serialNumber,
      required String androidVersion,
      required String apiLevel,
      required Connection connectionType,
      bool isPinnedDevice}) = _$_Device;
  const _Device._() : super._();

  @override
  String get id;
  @override
  Address? get address;
  @override
  int get port;
  @override
  String get model;
  @override
  String get manufacturer;
  @override
  String get serialNumber;
  @override
  String get androidVersion;
  @override
  String get apiLevel;
  @override
  Connection get connectionType;
  @override
  bool get isPinnedDevice;
  @override
  @JsonKey(ignore: true)
  _$DeviceCopyWith<_Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConnectionTearOff {
  const _$ConnectionTearOff();

  _None none() {
    return const _None();
  }

  Usb usb() {
    return const Usb();
  }

  Wifi wifi() {
    return const Wifi();
  }
}

/// @nodoc
const $Connection = _$ConnectionTearOff();

/// @nodoc
mixin _$Connection {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() usb,
    required TResult Function() wifi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(Usb value) usb,
    required TResult Function(Wifi value) wifi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionCopyWith<$Res> {
  factory $ConnectionCopyWith(
          Connection value, $Res Function(Connection) then) =
      _$ConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionCopyWithImpl<$Res> implements $ConnectionCopyWith<$Res> {
  _$ConnectionCopyWithImpl(this._value, this._then);

  final Connection _value;
  // ignore: unused_field
  final $Res Function(Connection) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$ConnectionCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc

class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'Connection.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() usb,
    required TResult Function() wifi,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(Usb value) usb,
    required TResult Function(Wifi value) wifi,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements Connection {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class $UsbCopyWith<$Res> {
  factory $UsbCopyWith(Usb value, $Res Function(Usb) then) =
      _$UsbCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsbCopyWithImpl<$Res> extends _$ConnectionCopyWithImpl<$Res>
    implements $UsbCopyWith<$Res> {
  _$UsbCopyWithImpl(Usb _value, $Res Function(Usb) _then)
      : super(_value, (v) => _then(v as Usb));

  @override
  Usb get _value => super._value as Usb;
}

/// @nodoc

class _$Usb implements Usb {
  const _$Usb();

  @override
  String toString() {
    return 'Connection.usb()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Usb);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() usb,
    required TResult Function() wifi,
  }) {
    return usb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
  }) {
    return usb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
    required TResult orElse(),
  }) {
    if (usb != null) {
      return usb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(Usb value) usb,
    required TResult Function(Wifi value) wifi,
  }) {
    return usb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
  }) {
    return usb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
    required TResult orElse(),
  }) {
    if (usb != null) {
      return usb(this);
    }
    return orElse();
  }
}

abstract class Usb implements Connection {
  const factory Usb() = _$Usb;
}

/// @nodoc
abstract class $WifiCopyWith<$Res> {
  factory $WifiCopyWith(Wifi value, $Res Function(Wifi) then) =
      _$WifiCopyWithImpl<$Res>;
}

/// @nodoc
class _$WifiCopyWithImpl<$Res> extends _$ConnectionCopyWithImpl<$Res>
    implements $WifiCopyWith<$Res> {
  _$WifiCopyWithImpl(Wifi _value, $Res Function(Wifi) _then)
      : super(_value, (v) => _then(v as Wifi));

  @override
  Wifi get _value => super._value as Wifi;
}

/// @nodoc

class _$Wifi implements Wifi {
  const _$Wifi();

  @override
  String toString() {
    return 'Connection.wifi()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Wifi);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() usb,
    required TResult Function() wifi,
  }) {
    return wifi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
  }) {
    return wifi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? usb,
    TResult Function()? wifi,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(Usb value) usb,
    required TResult Function(Wifi value) wifi,
  }) {
    return wifi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
  }) {
    return wifi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(Usb value)? usb,
    TResult Function(Wifi value)? wifi,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi(this);
    }
    return orElse();
  }
}

abstract class Wifi implements Connection {
  const factory Wifi() = _$Wifi;
}

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

  _Address call({required String interface, required String ip}) {
    return _Address(
      interface: interface,
      ip: ip,
    );
  }
}

/// @nodoc
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  String get interface => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call({String interface, String ip});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? interface = freezed,
    Object? ip = freezed,
  }) {
    return _then(_value.copyWith(
      interface: interface == freezed
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) then) =
      __$AddressCopyWithImpl<$Res>;
  @override
  $Res call({String interface, String ip});
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(_Address _value, $Res Function(_Address) _then)
      : super(_value, (v) => _then(v as _Address));

  @override
  _Address get _value => super._value as _Address;

  @override
  $Res call({
    Object? interface = freezed,
    Object? ip = freezed,
  }) {
    return _then(_Address(
      interface: interface == freezed
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Address extends _Address {
  const _$_Address({required this.interface, required this.ip}) : super._();

  @override
  final String interface;
  @override
  final String ip;

  @override
  String toString() {
    return 'Address(interface: $interface, ip: $ip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Address &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            (identical(other.ip, ip) || other.ip == ip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interface, ip);

  @JsonKey(ignore: true)
  @override
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);
}

abstract class _Address extends Address {
  const factory _Address({required String interface, required String ip}) =
      _$_Address;
  const _Address._() : super._();

  @override
  String get interface;
  @override
  String get ip;
  @override
  @JsonKey(ignore: true)
  _$AddressCopyWith<_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
