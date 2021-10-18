import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class Device with _$Device {
  const factory Device({
    required String id,
    required Address address,
    required int port,
    required String model,
    required String manufacturer,
    required String serialNumber,
    required String androidVersion,
    required String apiLevel,
    required Connection connectionType,
    @Default(false) bool isPinnedDevice,
  }) = _Device;

  const Device._();

  String get name => '$manufacturer $model';
  String get uniqueId => '$serialNumber-$id';
  bool get isUsb => connectionType is Usb;
  bool get isWifi => connectionType is Wifi;
  String get subtitle {
    return 'Android $androidVersion (API $apiLevel) - ${address.ip}:$port';
  }
}

@freezed
class Connection with _$Connection {
  const factory Connection.none() = _None;
  const factory Connection.usb() = Usb;
  const factory Connection.wifi() = Wifi;
}

@freezed
class Address with _$Address {
  const factory Address({
    required String interface,
    required String ip,
  }) = _Address;

  const Address._();
}
