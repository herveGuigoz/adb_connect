import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

const double _panelMaxHeight = 300;
const double _panelMinHeight = 100;

// todo: move this widget in adb_ui package
class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
    this.titleBar,
    required this.body,
    required this.console,
  }) : super(key: key);

  final TitleBar? titleBar;
  final Widget body;
  final Widget console;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  final _cursor = SystemMouseCursors.resizeRow;
  double _panelHeight = _panelMinHeight;

  void onDragUpdate(DragUpdateDetails details) {
    setState(() {
      _panelHeight = math.max(
        _panelMinHeight,
        math.min(_panelMaxHeight, _panelHeight - details.delta.dy),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);
    // 480 x 582
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: ColoredBox(color: theme.canvasColor),
            ),
            Positioned(
              top: widget.titleBar?.height ?? 52.0,
              bottom: _panelHeight,
              width: constraints.maxWidth,
              child: widget.body,
            ),
            if (widget.titleBar != null)
              Positioned(
                width: constraints.maxWidth,
                height: widget.titleBar!.height,
                child: widget.titleBar!,
              ),
            Positioned(
              bottom: 0,
              child: AnimatedContainer(
                height: _panelHeight,
                width: constraints.maxWidth,
                duration: const Duration(milliseconds: 50),
                child: Column(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onVerticalDragUpdate: onDragUpdate,
                      child: MouseRegion(
                        cursor: _cursor,
                        child: const MacosDivider(
                          thickness: 1,
                          height: 1,
                        ),
                      ),
                    ),
                    Expanded(
                      child: widget.console,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class MacosDivider extends StatelessWidget {
  const MacosDivider({
    Key? key,
    this.height,
    this.thickness,
    this.color,
  }) : super(key: key);

  final double? height;
  final double? thickness;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = MacosTheme.of(context);

    return SizedBox(
      height: height,
      child: Center(
        child: Container(
          height: thickness,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: color ?? theme.dividerColor,
                width: thickness ?? 0.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
