import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:holy_bible/core/domain/entities/book_entity.dart';
import 'package:holy_bible/core/presentation/navigation/routes.dart';
import 'package:holy_bible/modules/books/domain/use_cases/get_books_use_case.dart';

import 'package:holy_bible/modules/books/presentation/books_store.dart';

class BooksController extends GetxController {
  final BooksStore store;
  final GetBooksUseCase getBooksUseCase;

  BooksController({
    required this.store,
    required this.getBooksUseCase,
  });

  @override
  void onInit() {
    super.onInit();

    _getBooks();
  }

  Future<void> _getBooks() async {
    store.loading = true;

    store.books = await getBooksUseCase();

    store.loading = false;
  }

  void onBookTap({required BookEntity book}) {
    Get.toNamed(Routes.chapters, arguments: book);
  }
}
