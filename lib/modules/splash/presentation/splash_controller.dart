import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:holy_bible/core/presentation/navigation/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await FlutterTts().setLanguage("pt-BR");

    Get.offNamed(Routes.books);
  }
}
