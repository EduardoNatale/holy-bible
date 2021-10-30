import 'package:holy_bible/core/domain/entities/book_entity.dart';
import 'package:holy_bible/core/utils/custom_exception.dart';
import 'package:holy_bible/modules/splash/infra/datasources/books_remote_datasource.dart';

class BooksRepository {
  final BooksRemoteDatasource booksRemoteDatasource;

  BooksRepository({required this.booksRemoteDatasource});

  Future<Map<String, List<BookEntity>>> getBooks() async {
    final response = await booksRemoteDatasource.getBooks();

    try {
      return {
        "old": response["velho"]
            .map<BookEntity>((book) => BookEntity.fromMap(book))
            .toList(),
        "new": response["novo"]
            .map<BookEntity>((book) => BookEntity.fromMap(book))
            .toList(),
      };
    } catch (error) {
      throw CustomException(error);
    }
  }
}
