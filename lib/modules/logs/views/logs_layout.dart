import 'package:adb_connect/modules/logs/logic/providers.dart';
import 'package:adb_connect/modules/logs/views/components/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class LogsLayout extends ConsumerStatefulWidget {
  const LogsLayout({Key? key}) : super(key: key);

  @override
  _LogsLayoutState createState() => _LogsLayoutState();
}

class _LogsLayoutState extends ConsumerState<LogsLayout> {
  final ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logs = ref.watch(logsProvider);

    return ContextMenuRegion(
      onItemSelected: (item) => item.onSelected?.call(),
      menuItems: [
        MenuItem(
          title: 'Clear',
          onSelected: () => ref.read(logsProvider.notifier).clear(),
        ),
      ],
      child: CupertinoScrollbar(
        controller: controller,
        child: ListView.builder(
          controller: controller,
          shrinkWrap: true,
          // todo padding in inherited widget
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          itemBuilder: (context, index) => ConsoleText(logs[index]),
          itemCount: logs.length,
        ),
      ),
    );
  }
}
