import 'package:get/get.dart';
import 'package:holy_bible/core/presentation/navigation/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();

    Get.offNamed(Routes.books);
  }
}
