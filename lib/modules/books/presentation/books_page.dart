import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:holy_bible/core/domain/entities/book_entity.dart';
import 'package:holy_bible/modules/books/presentation/books_controller.dart';

class BooksPage extends GetView<BooksController> {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.store.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBooks(
                  books: controller.store.oldBooks,
                  title: "Velho testamento",
                ),
                const SizedBox(height: 16),
                _buildBooks(
                  books: controller.store.newBooks,
                  title: "Novo testamento",
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildBooks({required List<BookEntity> books, required String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: books.map<Widget>((book) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: GestureDetector(
                onTap: () => controller.onBookTap(book: book),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.indigo[700],
                  child: Text(
                    book.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
