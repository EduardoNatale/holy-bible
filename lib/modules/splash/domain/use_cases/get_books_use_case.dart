import 'package:holy_bible/core/domain/entities/book_entity.dart';
import 'package:holy_bible/modules/splash/data/repositories/books_repository.dart';

class GetBooksUseCase {
  final BooksRepository booksRepository;

  GetBooksUseCase({required this.booksRepository});

  Future<Map<String, List<BookEntity>>> call() {
    return booksRepository.getBooks();
  }
}
