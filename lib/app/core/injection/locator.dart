/// All dependencies are registered here
/// and can be used anywhere in the app
library;

import 'package:get_it/get_it.dart';
import 'package:notesense/app/core/observers/bloc_observer.dart';

final locator = GetIt.instance;

Future<void> registerDependencies() async {
  // Bloc observer
  locator.registerLazySingleton(() => const AppBlocObserver());

  // Use cases
  // locator.registerLazySingleton<UseCase<void, void, void>>(
  //   BaseUseCase,
  // );

  // Repositories
  // locator.registerLazySingleton<Repository>( () => RepositoryImpl() );
}
