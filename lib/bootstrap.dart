import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:notesense/app/app_runner.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await AppRunner.preAppRun();
  runApp(await builder());
  await AppRunner.postAppRun();
}
