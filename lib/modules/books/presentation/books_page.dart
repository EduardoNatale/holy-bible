import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:holy_bible/core/domain/entities/book_entity.dart';
import 'package:holy_bible/modules/books/presentation/books_controller.dart';

class BooksPage extends GetView<BooksController> {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Minha bíblia",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  IconButton(
                    onPressed: controller.changeAppFontSize,
                    icon: const Icon(Icons.format_size),
                  )
                ],
              ),
              const SizedBox(height: 8),
              _buildBooks(
                context,
                books: controller.store.oldBooks,
                title: "Velho testamento",
              ),
              const SizedBox(height: 16),
              _buildBooks(
                context,
                books: controller.store.newBooks,
                title: "Novo testamento",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBooks(
    BuildContext context, {
    required List<BookEntity> books,
    required String title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
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
                  color: Theme.of(context).colorScheme.surface,
                  child: Text(
                    book.name,
                    style: Theme.of(context).textTheme.bodyText2,
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
