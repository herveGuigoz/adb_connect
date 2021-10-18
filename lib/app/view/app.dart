import 'package:adb_connect/app/view/components/components.dart';
import 'package:adb_connect/l10n/l10n.dart';
import 'package:adb_connect/modules/devices/devices.dart';
import 'package:adb_connect/modules/logs/logs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

const kAppTitle = 'adb connect';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MacosApp(
      title: kAppTitle,
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const MainLayout(),
    );
  }
}

class MainLayout extends ConsumerWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      titleBar: TitleBar(
        actions: [
          // TitleBarAction(
          //   semanticLabel: 'Add device',
          //   icon: const MacosIcon(CupertinoIcons.badge_plus_radiowaves_right),
          //   onPressed: () {/* todo */},
          // ),
          TitleBarAction(
            semanticLabel: 'Restart ADB',
            icon: const MacosIcon(CupertinoIcons.clear),
            onPressed: ref.restartAdb,
          ),
          TitleBarAction(
            semanticLabel: 'Refresh',
            icon: const MacosIcon(CupertinoIcons.refresh),
            onPressed: ref.refreshDevices,
          ),
        ],
      ),
      body: const DevicesLayout(),
      console: const LogsLayout(),
    );
  }
}