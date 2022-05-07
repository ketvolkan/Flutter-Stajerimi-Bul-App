import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:get_storage/get_storage.dart';

import 'app/modules/app/views/home_management/home_management_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/theme/app_theme.dart';
import 'core/constants/app_constants.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final box = GetStorage('theme');

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (box.read('theme') == null) {
      box.write('theme', true);
    }
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: box.read('theme') ? ThemeMode.light : ThemeMode.dark,
      defaultTransition: Transition.noTransition,
      /*   supportedLocales: const [
        Locale('tr', 'TR'),
        Locale('en', 'US'),
      ],*/
      initialRoute: AppRoutes.HOME,
      initialBinding: HomeManagementBinding(),
      getPages: AppPages.PAGES,
    );
  }
}
