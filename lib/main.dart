import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/modules/app/views/home_management/home_management_binding.dart';
import 'app/modules/common/widgets/fabButton/custom_floating_action_button_controller.dart';
import 'app/modules/controllers/auth_login_controller.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/theme/app_theme.dart';
import 'core/constants/app_constants.dart';
import 'core/service/base_service.dart';
import 'generated/locales.g.dart';

void main() async {
  await GetStorage.init();
  Get.put(CustomFloatingActionButtonController());
  Get.put(BaseService());
  Get.put(AuthLoginController());
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
