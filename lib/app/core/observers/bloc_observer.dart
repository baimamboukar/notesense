import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesense/app/core/extensions/objectx.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    'onChange(${bloc.runtimeType}, $change)'.logDebug();
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    'onError(${bloc.runtimeType}, $error, $stackTrace)'.logError();
    super.onError(bloc, error, stackTrace);
  }
}
