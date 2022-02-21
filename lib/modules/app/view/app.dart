import 'package:adb_connect/core/icons/icons.dart';
import 'package:adb_connect/l10n/l10n.dart';
import 'package:adb_connect/modules/app/providers.dart';
import 'package:adb_connect/modules/app/view/components/components.dart';
import 'package:adb_connect/modules/console/console.dart';
import 'package:adb_connect/modules/devices/devices.dart';
import 'package:flutter/cupertino.dart';
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
    final theme = MacosTheme.of(context);
    final appState = ref.watch(appStateProvider);

    return appState.map(
      data: (_) => AppScaffold(
        titleBar: TitleBar(
          actions: [
            TitleBarAction(
              semanticLabel: 'Refresh',
              icon: const MacosIcon(AdbConnectIcon.refresh),
              onPressed: ref.loadDevices,
            ),
            TitleBarAction(
              semanticLabel: 'Kill server',
              icon: const MacosIcon(AdbConnectIcon.stop),
              onPressed: ref.restartAdb,
            ),
          ],
        ),
        body: const DevicesLayout(),
        console: const LogsLayout(),
      ),
      loading: (_) => Container(
        color: theme.canvasColor,
        alignment: Alignment.center,
        child: const ProgressCircle(),
      ),
      error: (_) => Container(
        color: theme.canvasColor,
        alignment: Alignment.center,
        child: Text(_.error.toString()),
      ),
    );
  }
}
