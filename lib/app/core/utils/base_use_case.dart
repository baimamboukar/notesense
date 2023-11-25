import 'package:dartz/dartz.dart';
import 'package:notesense/app/core/extensions/objectx.dart';

abstract class UseCase<P, T, F> {
  Future<Either<T, F>> call(P params);
  void log(F f) => (f as Object).log();
}
