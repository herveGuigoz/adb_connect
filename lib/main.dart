import 'package:adb_connect/bootstrap.dart';
import 'package:adb_connect/modules/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  bootstrap(() => const ProviderScope(child: App()));
}
