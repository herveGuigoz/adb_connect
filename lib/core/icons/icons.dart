import 'package:flutter/widgets.dart';

class AdbConnectIcon {
  AdbConnectIcon._();

  static const IconData github = AdbConnectIconData(0xe800);
  static const IconData refresh = AdbConnectIconData(0xe801);
  static const IconData stop = AdbConnectIconData(0xe802);
  static const IconData usb = AdbConnectIconData(0xe803);
  static const IconData wifi = AdbConnectIconData(0xe804);
}

class AdbConnectIconData extends IconData {
  const AdbConnectIconData(int codePoint)
      : super(codePoint, fontFamily: _kFontFamily);

  static const _kFontFamily = 'AdbConnectIcons';
}
