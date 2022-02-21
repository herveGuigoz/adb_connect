# Adb Connect

MacOs application to quickly connect your Android device over WiFi.

## Getting started

Connect Android device and adb host computer to a common Wi-Fi network accessible to both.
Connect your device to your computer using a USB cable.
Press `Connect` button and a notification will pop up saying that the phone has been connected.
Disconnect your USB once the application shows your device is connected.

---

## Create dmg

```bash
flutter build macos --release && sh scripts/create_mac_dmg.sh
```

see [create-dmg](https://github.com/create-dmg/create-dmg)

---

## Todo

- Setting for user path
- Assert adb is enable (which adb)
- Errors handling
- Scrappy
- [process_run](https://github.com/tekartik/process_run.dart) implementation ?

---

## Credits

[ADB-Wi-Fi](https://github.com/y-polek/ADB-Wi-Fi)
[adb-idea](https://github.com/pbreault/adb-idea)