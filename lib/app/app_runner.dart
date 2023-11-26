import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:notesense/app/core/extensions/objectx.dart';
import 'package:notesense/app/core/injection/locator.dart';
import 'package:notesense/app/core/observers/bloc_observer.dart';

class AppRunner {
  static Future<void> preAppRun() async {
    Bloc.observer = const AppBlocObserver();
    await registerDependencies();
    _setupExceptionLogger();
    await _loadEnv();
  }

  static Future<void> postAppRun() async {}
}

Future<void> _loadEnv() async {
  await dotenv.load();
}

void _setupExceptionLogger() {
  FlutterError.onError = (details) {
    (details.exceptionAsString(), stackTrace: details.stack).logError();
  };
}
