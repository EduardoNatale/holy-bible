import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:holy_bible/modules/verses/presentation/verse_controller.dart';

class VersePage extends GetView<VerseController> {
  const VersePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${controller.title} - ${controller.chapter}"),
        actions: [
          IconButton(
            onPressed: controller.onPlayTap,
            icon: const Icon(Icons.play_lesson),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: controller.verses.length,
        padding: EdgeInsets.fromLTRB(
          8,
          8,
          8,
          8 + MediaQuery.of(context).padding.bottom,
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 6),
        itemBuilder: (_, index) {
          return RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: "${index + 1}.",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: " ${controller.verses[index]}",
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
