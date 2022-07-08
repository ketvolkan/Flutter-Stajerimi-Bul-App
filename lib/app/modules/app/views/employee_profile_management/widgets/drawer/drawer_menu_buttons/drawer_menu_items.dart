import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../../../core/constants/app_constants.dart';
import '../../../../../../../../core/variables/icons.dart';
import '../../language_change_button.dart/language_change_button.dart';
import '../../theme_change_button/theme_change_button.dart';
import 'drawer_menu_button.dart';

List<Widget> drawerMenuItems = [
  DrawerMenuButton(
    onTap: () {},
    title: AppConstants.profileAboutDrawer.tr,
    customLeadingIcon: AppIcons.bottomNavigationBarAccount,
  ),
  DrawerMenuButton(
    onTap: () {},
    title: AppConstants.aboutMeDrawer.tr,
    customLeadingIcon: AppIcons.aboutCvCardIcon,
  ),
  DrawerMenuButton(
    onTap: () {},
    title: AppConstants.schoolCvDrawer.tr,
    customLeadingIcon: AppIcons.schoolCvCardIcon,
  ),
  DrawerMenuButton(
    onTap: () {},
    title: AppConstants.jobCvDrawer.tr,
    customLeadingIcon: AppIcons.jobExperienceCvCardIcon,
  ),
  DrawerMenuButton(
    onTap: () {},
    title: AppConstants.languageCvDrawer.tr,
    customLeadingIcon: AppIcons.languageCvCardIcon,
  ),
  FittedBox(
    child: Row(
      children: [
        LanguageChangeButton(),
        ThemeChangeButton(),
      ],
    ),
  ),
];
