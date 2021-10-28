import 'package:get/get.dart';
import 'package:holy_bible/core/presentation/navigation/routes.dart';
import 'package:holy_bible/modules/books/presentation/books_binding.dart';
import 'package:holy_bible/modules/books/presentation/books_page.dart';
import 'package:holy_bible/modules/chapters/presentation/chapters_page.dart';
import 'package:holy_bible/modules/splash/presentation/splash_binding.dart';
import 'package:holy_bible/modules/splash/presentation/splash_page.dart';
import 'package:holy_bible/modules/verses/presentation/verse_page.dart';

class Navigation {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.books,
      page: () => const BooksPage(),
      binding: BooksBinding(),
    ),
    GetPage(
      name: Routes.chapters,
      page: () => const ChaptersPage(),
    ),
    GetPage(
      name: Routes.verses,
      page: () => const VersePage(),
    ),
  ];
}
