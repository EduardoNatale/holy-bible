import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:holy_bible/core/domain/entities/book_entity.dart';
import 'package:holy_bible/core/presentation/navigation/routes.dart';

class ChaptersPage extends StatelessWidget {
  const ChaptersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookEntity book = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: book.chapters.asMap().entries.map<Widget>((entry) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.verses, arguments: [
                    book.name,
                    "${entry.key + 1}",
                    entry.value,
                  ]);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.indigo[700],
                  child: Text(
                    "${entry.key + 1}",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
