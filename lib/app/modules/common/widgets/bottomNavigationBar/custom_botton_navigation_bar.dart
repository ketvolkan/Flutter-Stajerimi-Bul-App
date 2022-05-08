import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';
import '../../../../routes/app_routes.dart';

class CustomNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final Function(int)? onTap;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unSelectedItemColor;
  final double notchMargin;

  const CustomNavigationBar({
    Key? key,
    required this.currentIndex,
    this.backgroundColor,
    this.selectedItemColor,
    this.unSelectedItemColor,
    this.onTap,
    this.notchMargin = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Utils.normalPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Utils.highPadding),
        child: Container(
          color: Get.theme.backgroundColor,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: notchMargin,
            color: backgroundColor ?? Get.theme.primaryColor,
            child: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: currentIndex,
              selectedItemColor: selectedItemColor ?? Get.theme.appBarTheme.titleTextStyle!.color,
              unselectedItemColor: unSelectedItemColor ?? Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
              onTap: onTap ??
                  (value) {
                    switch (value) {
                      case 0:
                        if (Get.currentRoute != AppRoutes.PROFILE) {
                          Get.offAllNamed(AppRoutes.PROFILE);
                        }
                        break;
                      case 1:
                        if (Get.currentRoute != AppRoutes.HOME) {
                          Get.offAllNamed(AppRoutes.HOME);
                        }
                        break;
                      case 2:
                        if (Get.currentRoute != AppRoutes.SEARCH) {
                          Get.offAllNamed(AppRoutes.SEARCH);
                        }
                        break;
                      case 3:
                        if (Get.currentRoute != AppRoutes.SETTING) {
                          Get.offAllNamed(AppRoutes.SETTING);
                        }
                        break;
                      default:
                        Get.offAllNamed(AppRoutes.HOME);
                    }
                  },
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(AppIcons.bottomNavigationBarAccount),
                  label: AppConstants.bottomNavigationBarAccount,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(AppIcons.bottomNavigationBarHome),
                  label: AppConstants.bottomNavigationBarHome,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(AppIcons.bottomNavigationBarSearch),
                  label: AppConstants.bottomNavigationBarSearch,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(AppIcons.bottomNavigationBarSetting),
                  label: AppConstants.bottomNavigationBarSetting,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
