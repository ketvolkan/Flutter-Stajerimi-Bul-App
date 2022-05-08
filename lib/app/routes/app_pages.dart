import 'package:get/get.dart';

import '../modules/app/views/employee_profile_management/employee_profile_management_binding.dart';
import '../modules/app/views/employee_profile_management/employee_profile_management_view.dart';
import '../modules/app/views/home_management/home_management_binding.dart';
import '../modules/app/views/home_management/home_management_view.dart';
import '../modules/app/views/search_managment/search_management_binding.dart';
import '../modules/app/views/search_managment/search_management_view.dart';
import '../modules/app/views/setting_management/setting_management_binding.dart';
import '../modules/app/views/setting_management/setting_management_view.dart';
import '../modules/app/views/splash/splash_screen_binding.dart';
import '../modules/app/views/splash/splash_screen_view.dart';
import 'app_routes.dart';

class AppPages {
  static var PAGES = [
    GetPage(name: AppRoutes.SPLASH, page: () => const SplashView(), binding: SplashViewBinding()),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeManagementView(),
      binding: HomeManagementBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE,
      page: () => const EmployeeProfileManagementView(),
      binding: EmployeeProfileManagementBinding(),
    ),
    GetPage(
      name: AppRoutes.SEARCH,
      page: () => const SearchManagementView(),
      binding: SearchManagementBinding(),
    ),
    GetPage(
      name: AppRoutes.SETTING,
      page: () => const SettingManagementView(),
      binding: SettingManagementBinding(),
    ),
  ];
}
