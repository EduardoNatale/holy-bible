import 'package:get/get.dart';
import 'package:holy_bible/core/presentation/stores/books_store.dart';
import 'package:holy_bible/modules/splash/data/repositories/books_repository.dart';
import 'package:holy_bible/modules/splash/domain/use_cases/get_books_use_case.dart';
import 'package:holy_bible/modules/splash/infra/datasources/books_remote_datasource.dart';
import 'package:holy_bible/modules/splash/presentation/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BooksRemoteDatasource(dio: Get.find()));
    Get.put(BooksRepository(
      booksRemoteDatasource: Get.find(),
    ));
    Get.put(GetBooksUseCase(
      booksRepository: Get.find(),
    ));
    Get.put<BooksStore>(BooksStore(), permanent: true);
    Get.put<SplashController>(SplashController(
      booksStore: Get.find(),
      getBooksUseCase: Get.find(),
    ));
  }
}
