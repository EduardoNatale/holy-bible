import 'package:get/get.dart';
import 'package:holy_bible/modules/verses/presentation/verse_controller.dart';
import 'package:holy_bible/modules/verses/presentation/verse_store.dart';

class VerseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<VerseStore>(VerseStore());
    Get.put<VerseController>(
      VerseController(store: Get.find()),
    );
  }
}
