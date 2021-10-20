# Adb Connect

MacOs application build with flutter that simplifies "adb over Wi-Fi" usage.

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