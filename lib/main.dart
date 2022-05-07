import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'app/modules/app/views/home_management/home_management_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/theme/app_theme.dart';
import 'core/constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      theme: lightTheme,
      darkTheme: darkTheme,
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
