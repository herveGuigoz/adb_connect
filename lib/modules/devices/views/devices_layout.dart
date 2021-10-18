import 'package:adb_connect/adb/models.dart';
import 'package:adb_connect/modules/devices/logic/adb_service.dart';
import 'package:adb_connect/modules/devices/logic/providers.dart';
import 'package:adb_connect/modules/devices/views/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class DevicesLayout extends ConsumerStatefulWidget {
  const DevicesLayout({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _DeviceLayoutState();
  }
}

class _DeviceLayoutState extends ConsumerState<DevicesLayout> {
  final ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);
    final devices = ref.watch(adbServiceProvider);

    if (devices.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/devices-lineup.png'),
          Text(
            'Connect a device via USB cable',
            style: theme.typography.caption1.copyWith(
              color: const Color.fromRGBO(133, 142, 159, 1),
            ),
          ),
        ],
      );
    }

    return CupertinoScrollbar(
      controller: controller,
      child: ListView(
        controller: controller,
        children: [
          for (final device in devices) DeviceListTile(device),
        ],
      ),
    );
  }
}

class DeviceListTile extends ConsumerWidget {
  const DeviceListTile(this.device, {Key? key}) : super(key: key);

  final Device device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = MacosTheme.of(context);
    final isConnected = ref.watch(isDeviceConnectedProvider(device));

    return ContextMenuRegion(
      onItemSelected: (item) => item.onSelected?.call(),
      menuItems: [
        MenuItem(
          title: 'Info',
          onSelected: () => DeviceInfoSheet.show(context, device: device),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: MacosListTile(
                leading: device.connectionType.when(
                  none: () => const SizedBox(),
                  usb: () => AppIcons.usbPlug,
                  wifi: () => AppIcons.wifi,
                ),
                title: Text(device.name),
                subtitle: Text(device.subtitle),
              ),
            ),
            PushButton(
              buttonSize: ButtonSize.small,
              onPressed: device.isUsb
                  ? isConnected
                      ? null
                      : () => ref.connectDevice(device)
                  : () => ref.disconnectDevice(device),
              child: Text(
                device.isUsb || !isConnected ? 'Connect' : 'Disconnect',
                style: theme.typography.caption2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
