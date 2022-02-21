import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class TitleBarAction extends StatelessWidget {
  const TitleBarAction({
    Key? key,
    required this.semanticLabel,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final String semanticLabel;
  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MacosTooltip(
      message: semanticLabel,
      child: MacosIconButton(
        semanticLabel: semanticLabel,
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
