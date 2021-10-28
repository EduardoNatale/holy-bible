import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

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
    return GetMaterialApp(
      title: "Holy Bible",
      getPages: Navigation.routes,
      initialRoute: Routes.initialRoute,
      initialBinding: AppBinding(),
    );
  }
}
