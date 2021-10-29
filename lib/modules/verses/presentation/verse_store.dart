import 'package:get/get.dart';

class VerseStore {
  final _playing = false.obs;
  bool get playing => _playing.value;
  set playing(bool value) => _playing.value = value;
}
