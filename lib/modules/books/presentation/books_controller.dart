import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:holy_bible/core/domain/entities/book_entity.dart';
import 'package:holy_bible/core/presentation/navigation/routes.dart';

import 'package:holy_bible/core/presentation/stores/books_store.dart';
import 'package:holy_bible/core/presentation/theme/theme.dart';

class BooksController extends GetxController {
  final BooksStore store;

  BooksController({required this.store});

  void onBookTap({required BookEntity book}) {
    Get.toNamed(Routes.chapters, arguments: book);
  }

  void changeAppFontSize() {
    final List<double> scales = [1, 1.2, 1.4];
    final index = scales.indexOf(CustomTheme.scaleFont);

    if (index == scales.length - 1) {
      CustomTheme.scaleFont = scales[0];
    } else {
      CustomTheme.scaleFont = scales[index + 1];
    }

    Get.forceAppUpdate();
  }
}
