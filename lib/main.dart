import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'generated/locales.g.dart';

import 'app/modules/app/views/home_management/home_management_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/theme/app_theme.dart';
import 'core/constants/app_constants.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    bool themeMode = true;
    themeMode = box.read('theme') ?? true;
    bool currentLocal = true;
    currentLocal = box.read('local') ?? true;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle.tr,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode ? ThemeMode.light : ThemeMode.dark,
      defaultTransition: Transition.noTransition,
      translations: AppTranslation(),
      locale: currentLocal ? const Locale('tr', 'TR') : const Locale('en', 'US'),
      initialRoute: AppRoutes.HOME,
      initialBinding: HomeManagementBinding(),
      getPages: AppPages.PAGES,
    );
  }
}
