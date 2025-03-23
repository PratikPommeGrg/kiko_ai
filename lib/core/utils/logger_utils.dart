import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Singleton Logger Instance
final _logger = Logger(
  printer: PrettyPrinter(
    colors: true, // Enable colors for logs
    printEmojis: true, // Add emojis for log levels
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);

/// Logs data to the console if in debug mode.
void console(dynamic data) {
  if (kDebugMode) {
    print(data);
  }
}

/// Logs data using the `log` method if in debug mode.
void consoleLog(dynamic data) {
  if (kDebugMode) {
    log(data.toString());
  }
}

/// Logs messages with different log levels using the singleton logger.
void logger(
  dynamic message, {
  Level level = Level.info, // Default log level is info
}) {
  if (kDebugMode) {
    switch (level) {
      case Level.debug:
        _logger.d(message);
        break;
      case Level.error:
        _logger.e(message, stackTrace: StackTrace.current);
        break;
      case Level.warning:
        _logger.w(message);
        break;
      case Level.info:
        _logger.i(message);
        break;
      case Level.trace:
        _logger.t(message);
        break;
      case Level.fatal:
        _logger.f(message);
        break;
      default:
        _logger.i(message); // Default to info if level is unrecognized
    }
  }
}
