import 'package:get/get.dart';
import 'package:holy_bible/core/domain/entities/book_entity.dart';

class BooksStore {
  final _books = Rx<Map<String, List<BookEntity>>>({});
  Map<String, List<BookEntity>> get books => _books.value;
  set books(Map<String, List<BookEntity>> value) => _books.value = value;

  List<BookEntity> get oldBooks => books["old"]!;
  List<BookEntity> get newBooks => books["new"]!;
}
