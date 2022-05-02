import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/app/routes/app_routes.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';

class CustomNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNavigationBar({
    Key? key,
    required this.currentIndex,
    this.backgroundColor,
    this.selectedItemColor,
    this.unSelectedItemColor,
    this.onTap,
  }) : super(key: key);
  final int currentIndex;
  final Function(int)? onTap;

  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unSelectedItemColor;
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
            notchMargin: 5,
            color: backgroundColor ?? Get.theme.primaryColor,
            child: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: currentIndex,
              selectedItemColor: selectedItemColor,
              unselectedItemColor: unSelectedItemColor,
              onTap: onTap ??
                  (value) {
                    switch (value) {
                      case 0:
                        Get.offAndToNamed(AppRoutes.PROFILE);
                        break;
                      case 1:
                        Get.offAndToNamed(AppRoutes.HOME);
                        break;
                      case 2:
                        Get.offAndToNamed(AppRoutes.SEARCH);
                        break;
                      case 3:
                        Get.offAndToNamed(AppRoutes.SETTING);
                        break;

                      default:
                    }
                  },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(AppIcons.bottomNavigationBarAccount), label: AppConstants.bottomNavigationBarAccount),
                BottomNavigationBarItem(
                    icon: Icon(AppIcons.bottomNavigationBarHome), label: AppConstants.bottomNavigationBarHome),
                BottomNavigationBarItem(
                    icon: Icon(AppIcons.bottomNavigationBarSearch), label: AppConstants.bottomNavigationBarSearch),
                BottomNavigationBarItem(
                    icon: Icon(AppIcons.bottomNavigationBarSetting), label: AppConstants.bottomNavigationBarSetting),
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
