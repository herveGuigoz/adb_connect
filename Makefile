
# On device go to Settings > About tablet (or About phone) > Status > IP address
IP_ADDRESS?=192.168.1.45
# Possible range 5555 to 5585
PORT?=5555

FLUTTER?=flutter
APK_PATH?=build/app/outputs/flutter-apk/app-release.apk
PACKAGE_NAME?=com.example.adb_demo
BUILD_VERSION?=--release
OBFUSCATE?=--no-obfuscate
REPOSITORIES?=lib
DOC_PORT?=8088

GREEN_COLOR=\033[32m
NO_COLOR=\033[0m

define print_color_message
	@echo "$(GREEN_COLOR)$(1)$(NO_COLOR)";
endef

##
## ---------------------------------------------------------------
## Android Debug Bridge (adb)
## https://developer.android.com/studio/command-line/adb#wireless
## ---------------------------------------------------------------
##

.PHONY: devices
devices: ## check the devices connected
	@$(call print_color_message,"check the devices connected")
	adb devices -l

.PHONY: setup-wifi
setup-wifi: ## [Android 10 and lower] setup Wifi connexion with device by default port 5555
	@$(call print_color_message,"setup Wifi connexion with device")
	# Device must be connected in USB
	adb tcpip $(PORT)

.PHONY: connect-wifi
connect-wifi: ## [Android 10 and lower] connect device on Wifi by default ip address 192.168.1.90
	@$(call print_color_message,"connect device on Wifi")
	adb connect $(IP_ADDRESS)

.PHONY: start-server
start-server: ## start server
	@$(call print_color_message,"start server")
	adb start-server

.PHONY: kill-server
kill-server: ## kill server to reset adb host
	@$(call print_color_message,"kill server to reset adb host")
	adb kill-server

.PHONY: install-apk
install-apk: ## install apk on device by default release path
	@$(call print_color_message,"install apk on device by default release path")
	adb -s $(IP_ADDRESS):$(PORT) install $(APK_PATH)

.PHONY: start-interactive-shell
start-interactive-shell: ## start an interactive shell on device (exit to finish)
	@$(call print_color_message,"start an interactive shell on device (exit to finish)")
	adb -s $(IP_ADDRESS):$(PORT) shell

.PHONY: logcat
logcat: ## run logcat
	@$(call print_color_message,"run logcat")
	adb logcat -v color,threadtime

.PHONY: list-packages
list-packages: ## Use package manager to list packages
	@$(call print_color_message,"Use package manager to list packages")
	adb shell pm list packages

.PHONY: list-permissions
list-permissions: ## Use package manager to list permissions
	@$(call print_color_message,"Use package manager to list permissions")
	adb shell pm list permission-groups

.PHONY: path-package
path-package: ## show path of package
	@$(call print_color_message,"how path of package")
	adb shell pm path $(PACKAGE_NAME)

.PHONY: screenshot
screenshot: ## take screenshot
	@$(call print_color_message,"take screenshot")
	adb shell screencap /sdcard/PICTURE_1.png
	adb pull /sdcard/PICTURE_1.png

.PHONY: record
record: ## perform record of 5min (depending on device)
	@$(call print_color_message,"perform record")
	adb shell screenrecord --verbose --time-limit 300 /sdcard/RECORD_1.mp4

.PHONY: info-device
info-device: ## information on device
	@$(call print_color_message,"information on device")
	adb shell getprop ro.build.version.release
	adb shell getprop ro.build.version.sdk
	adb shell getprop ro.build.product
	adb shell getprop ro.build.characteristics
	adb shell getprop gsm.sim.operator.alpha
	adb shell getprop persist.sys.locale
	adb shell getprop persist.sys.timezone
	adb shell wm size

##
## ---------------------------------------------------------------
## Flutter
## ---------------------------------------------------------------
##

.PHONY: clear
clear: ## clear cache
	@$(call print_color_message,"clear cache")
	$(FLUTTER) clean

.PHONY: dependencies
dependencies: ## update dependencies
	@$(call print_color_message,"update dependencies")
	$(FLUTTER) pub get

.PHONY: format
format: ## format code by default lib
	@$(call print_color_message,"format code")
	$(FLUTTER) format $(REPOSITORIES)

.PHONY: analyze
analyze: ## run code analyzer
	@$(call print_color_message,"run code analyzer")
	$(FLUTTER) analyze

.PHONY: build-apk
build-apk: clear ## build apk by default release version
	@$(call print_color_message,"build apk")
	$(FLUTTER) build apk $(BUILD_VERSION)

.PHONY: build-appbundle
build-appbundle: clear ## build google play store app bundle
	@$(call print_color_message,"build google play store app bundle")
	$(FLUTTER) build appbundle $(BUILD_VERSION) $(OBFUSCATE)

# todo: ajouter ios

##
## ---------------------------------------------------------------
## Dart
## ---------------------------------------------------------------
##

.PHONY: install-environment-dart
install-environment-dart: ## install environment Dart
	@$(call print_color_message,"install environment Dart")
	dart pub global activate dartdoc
	dart pub global activate dhttpd

.PHONY: doc
doc: ## create documentation
	@$(call print_color_message,"create documentation")
	dartdoc

.PHONY: view-doc
view-doc: ## view documentation in http page
	@$(call print_color_message,"view documentation in http page")
	dhttpd --path doc/api --port $(DOC_PORT)

#
# ----------------------------------------------------------------
# Help
# ----------------------------------------------------------------
#

.DEFAULT_GOAL := help
.PHONY: help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "$(GREEN_COLOR)%-30s$(NO_COLOR) %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
