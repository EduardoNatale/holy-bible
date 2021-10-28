import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<Dio>(
      Dio(BaseOptions(
        baseUrl: "https://bible.danielguirra.repl.co",
      )),
    );
  }
}
