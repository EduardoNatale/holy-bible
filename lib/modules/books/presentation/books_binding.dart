import 'package:get/get.dart';
import 'package:holy_bible/modules/books/presentation/books_controller.dart';

class BooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BooksController>(
      BooksController(store: Get.find()),
    );
  }
}
