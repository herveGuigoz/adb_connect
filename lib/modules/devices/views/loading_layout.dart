import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MacosTheme.of(context).canvasColor,
      alignment: Alignment.center,
      child: const ProgressCircle(),
    );
  }
}
