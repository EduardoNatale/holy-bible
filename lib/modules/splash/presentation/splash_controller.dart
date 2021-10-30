import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

import 'package:holy_bible/core/presentation/navigation/routes.dart';
import 'package:holy_bible/core/presentation/stores/books_store.dart';
import 'package:holy_bible/modules/splash/domain/use_cases/get_books_use_case.dart';

class SplashController extends GetxController {
  final BooksStore booksStore;
  final GetBooksUseCase getBooksUseCase;

  SplashController({
    required this.booksStore,
    required this.getBooksUseCase,
  });

  @override
  void onReady() async {
    super.onReady();

    await FlutterTts().setLanguage("pt-BR");

    await _getBooks();

    Get.offNamed(Routes.books);
  }

  Future<void> _getBooks() async {
    booksStore.books = await getBooksUseCase();
  }
}
