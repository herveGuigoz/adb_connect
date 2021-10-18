import 'package:adb_connect/sandbox/models.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macos_ui/macos_ui.dart';

/// Stdout text
class ConsoleText extends StatelessWidget {
  const ConsoleText(this.entry, {Key? key}) : super(key: key);

  final LogEntry entry;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Log(
          "> ${entry.command.executable} ${entry.command.arguments.join(' ')}",
        ),
        for (final log in entry.result.output) Log(log)
      ],
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
        fontSize: 12,
        color: MacosTheme.of(context).primaryColor,
      ),
    );
  }
}
