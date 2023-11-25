import 'package:logger/logger.dart';

extension ObjectX on Object {
  void log() => Logger().log(Level.info, toString());
  void logDebug() => Logger().log(Level.debug, toString());
  void logWarning() => Logger().log(Level.warning, toString());
  void logError() => Logger().log(Level.error, toString());
}
