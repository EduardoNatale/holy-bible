import 'package:logger/logger.dart';

class CustomException implements Exception {
  final dynamic message;

  CustomException([this.message]) {
    Logger().e(message);
  }

  @override
  String toString() {
    return message;
  }
}
