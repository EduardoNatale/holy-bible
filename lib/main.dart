import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:holy_bible/core/presentation/theme/theme.dart';

import 'core/presentation/bindings/app_binding.dart';
import 'core/presentation/navigation/navigation.dart';
import 'core/presentation/navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomTheme.textScaleFactor = MediaQuery.textScaleFactorOf(context);

    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        title: "Holy Bible",
        darkTheme: CustomTheme.darkTheme,
        themeMode: ThemeMode.dark,
        getPages: Navigation.routes,
        initialRoute: Routes.initialRoute,
        initialBinding: AppBinding(),
      ),
    );
  }
}
