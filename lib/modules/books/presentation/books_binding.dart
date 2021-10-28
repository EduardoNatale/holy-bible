import 'package:get/get.dart';
import 'package:holy_bible/modules/books/data/repositories/books_repository.dart';
import 'package:holy_bible/modules/books/domain/use_cases/get_books_use_case.dart';
import 'package:holy_bible/modules/books/infra/datasources/books_remote_datasource.dart';
import 'package:holy_bible/modules/books/presentation/books_controller.dart';
import 'package:holy_bible/modules/books/presentation/books_store.dart';

class BooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BooksRemoteDatasource(dio: Get.find()));
    Get.put(BooksRepository(
      booksRemoteDatasource: Get.find(),
    ));
    Get.put(GetBooksUseCase(
      booksRepository: Get.find(),
    ));
    Get.put<BooksStore>(BooksStore());
    Get.put<BooksController>(
      BooksController(store: Get.find(), getBooksUseCase: Get.find()),
    );
  }
}
