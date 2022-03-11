import 'package:adb_connect/services/adb/adb.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class DeviceInfoSheet extends ConsumerWidget {
  const DeviceInfoSheet({Key? key, required this.device}) : super(key: key);

  static Future<void> show(
    BuildContext context, {
    required Device device,
  }) async {
    await showMacosSheet<void>(
      context: context,
      barrierDismissible: true,
      builder: (_) => DeviceInfoSheet(device: device),
    );
  }

  final Device device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MacosSheet(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoListTile(
              title: 'Manufacturer',
              subtitle: device.manufacturer,
            ),
            InfoListTile(
              title: 'Model',
              subtitle: device.model,
            ),
            InfoListTile(
              title: 'API level',
              subtitle: device.apiLevel,
            ),
            InfoListTile(
              title: 'Serial number',
              subtitle: device.serialNumber,
            ),
            if (device.address != null)
              InfoListTile(
                title: 'Adress',
                subtitle: '${device.address!.ip}:${device.port}',
              ),
          ],
        ),
      ),
    );
  }
}

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    final titleTextStyle = theme.typography.headline.copyWith(
      fontWeight: FontWeight.bold,
    );

    final subTitleTextStyle = theme.typography.subheadline.copyWith(
      color: MacosTheme.brightnessOf(context).isDark
          ? MacosColors.systemGrayColor
          : const MacosColor(0xff88888C),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: titleTextStyle),
        const SizedBox(height: 4),
        Text(subtitle, style: subTitleTextStyle),
        const SizedBox(height: 16),
      ],
    );
  }
}
