#!/bin/sh
test -f adb_connect.dmg && rm adb_connect.dmg
create-dmg \
  --volname "AdbConnect Installer" \
  --volicon "./assets/installer/dmg.icns" \
  --background "./assets/installer/dmg_background.png" \
  --window-pos 200 120 \
  --window-size 800 400 \
  --icon-size 100 \
  --icon "AdbConnect.app" 200 190 \
  --hide-extension "AdbConnect.app" \
  --app-drop-link 600 185 \
  "build/macos/Build/Products/Release/AdbConnect.dmg" \
  "build/macos/Build/Products/Release/AdbConnect.app"