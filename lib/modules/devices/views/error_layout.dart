import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class Error extends StatelessWidget {
  const Error({Key? key, required this.reason}) : super(key: key);

  final String reason;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MacosTheme.of(context).canvasColor,
      alignment: Alignment.center,
      child: Text(reason),
    );
  }
}
