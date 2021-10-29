import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:holy_bible/modules/verses/presentation/verse_store.dart';

class VerseController extends GetxController {
  final VerseStore store;

  VerseController({required this.store});

  late String title;
  late String chapter;
  late List<String> verses;

  @override
  void onInit() {
    super.onInit();

    title = Get.arguments[0];
    chapter = Get.arguments[1];
    verses = Get.arguments[2];
  }

  void onPlayTap() async {
    if (store.playing) {
      store.playing = false;
      FlutterTts().pause();
    } else {
      store.playing = true;
      FlutterTts().speak(
        verses.reduce((value, element) => value + element),
      );
    }
  }

  @override
  void onClose() {
    super.onClose();
    FlutterTts().pause();
  }
}
