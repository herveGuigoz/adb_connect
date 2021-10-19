#!/bin/sh
test -f adb_connect.dmg && rm adb_connect.dmg
create-dmg \
  --volname "adb_connect Installer" \
  --volicon "./assets/installer.icns" \
  --background "./assets/dmg_background.png" \
  --window-pos 200 120 \
  --window-size 800 530 \
  --icon-size 130 \
  --text-size 14 \
  --icon "adb_connect.app" 260 250 \
  --hide-extension "adb_connect.app" \
  --app-drop-link 540 250 \
  --hdiutil-quiet \
  "build/macos/Build/Products/Release/adb_connect.dmg" \
  "build/macos/Build/Products/Release/adb_connect.app"