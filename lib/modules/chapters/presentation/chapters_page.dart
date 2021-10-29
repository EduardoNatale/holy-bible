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
        child: GridView.count(
          crossAxisCount: 6,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          shrinkWrap: true,
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
                  color: Theme.of(context).colorScheme.surface,
                  alignment: Alignment.center,
                  child: Text(
                    "${entry.key + 1}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
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
