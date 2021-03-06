import 'package:adb_connect/services/sandbox/sandbox.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macos_ui/macos_ui.dart';

class ConsoleText extends StatelessWidget {
  const ConsoleText(this.entry, {Key? key}) : super(key: key);

  final LogEntry entry;

  @override
  Widget build(BuildContext context) {
    return entry.maybeWhen(
      command: (value) => Log('> $value'),
      orElse: () => Log(entry.value),
    );
  }
}

class Log extends StatelessWidget {
  const Log(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: GoogleFonts.ibmPlexMono().copyWith(
        fontSize: 10,
        color: MacosTheme.of(context).primaryColor,
      ),
    );
  }
}
