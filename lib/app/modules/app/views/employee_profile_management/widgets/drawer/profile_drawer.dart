import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'drawer_menu_buttons/drawer_menu_button.dart';
import '../language_change_button.dart/language_change_button.dart';
import '../theme_change_button/theme_change_button.dart';
import '../../../../../../../core/variables/icons.dart';
import '../../../../../common/widgets/custom_text.dart';

import '../../../../../../../core/constants/app_constants.dart';

import '../../../../../../../core/utils/utils.dart';

class ProfileDrawer extends StatelessWidget {
  ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(Utils.extraHighRadius)),
      child: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: Get.size.height * 0.13,
              child: DrawerHeader(
                child: SizedBox(
                  width: Get.size.width,
                  child: CustomText.extraHigh(AppConstants.updateProfileDrawer.tr, textColor: Colors.white),
                ),
                decoration: BoxDecoration(color: Get.theme.primaryColor),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => drawerMenuItems[index],
                  separatorBuilder: (context, index) => SizedBox(height: Utils.normalPadding),
                  itemCount: drawerMenuItems.length),
            )
          ],
        ),
      ),
    );
  }

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
}
