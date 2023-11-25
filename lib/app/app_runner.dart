import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:notesense/app/core/observers/bloc_observer.dart';

class AppRunner {
  Future<void> preAppRun() async {
    Bloc.observer = const AppBlocObserver();
    await _loadEnv();
  }

  Future<void> postAppRun() async {}
}

Future<void> _loadEnv() async {
  await dotenv.load();
}
