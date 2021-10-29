import 'package:get/get.dart';
import 'package:flutter/material.dart';

class VersePage extends StatelessWidget {
  const VersePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = Get.arguments[0];
    final String chapter = Get.arguments[1];
    final List<String> verses = Get.arguments[2];

    return Scaffold(
      appBar: AppBar(
        title: Text("$title - $chapter"),
      ),
      body: ListView.separated(
        itemCount: verses.length,
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
                text: " ${verses[index]}",
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
