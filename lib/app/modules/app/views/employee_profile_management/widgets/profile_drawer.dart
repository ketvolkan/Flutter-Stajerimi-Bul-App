import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/app/modules/app/views/employee_profile_management/widgets/language_change_button.dart/language_change_button.dart';
import 'package:stajyerimibul/app/modules/app/views/employee_profile_management/widgets/theme_change_button/theme_change_button.dart';

import '../../../../../../core/constants/app_constants.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/variables/icons.dart';
import '../../../../../../core/variables/style.dart';
import '../../../../common/widgets/buttons/custom_text_button.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(Utils.veryHighBorderRadius)),
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: DrawerHeader(
                child: SizedBox(
                  width: Get.size.width,
                  child: Text(AppConstants.updateProfileDrawer.tr, style: AppTextStyle.drawerTitleTextStyle),
                ),
                decoration: BoxDecoration(color: Get.theme.primaryColor),
              ),
            ),
            Expanded(
              flex: 13,
              child: Padding(
                padding: EdgeInsets.all(Utils.normalPadding),
                child: ListView(
                  children: [
                    CustomTextButton(
                      onTap: () {},
                      text: AppConstants.profileAboutDrawer.tr,
                      textColor: Get.theme.primaryColorDark,
                      icon: AppIcons.bottomNavigationBarAccount,
                      iconColor: Get.theme.primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: Utils.normalPadding),
                    CustomTextButton(
                      onTap: () {},
                      text: AppConstants.aboutMeDrawer.tr,
                      textColor: Get.theme.primaryColorDark,
                      icon: AppIcons.aboutCvCardIcon,
                      iconColor: Get.theme.primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: Utils.normalPadding),
                    CustomTextButton(
                      onTap: () {},
                      text: AppConstants.schoolCvDrawer.tr,
                      textColor: Get.theme.primaryColorDark,
                      icon: AppIcons.schoolCvCardIcon,
                      iconColor: Get.theme.primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: Utils.normalPadding),
                    CustomTextButton(
                      onTap: () {},
                      text: AppConstants.jobCvDrawer.tr,
                      textColor: Get.theme.primaryColorDark,
                      icon: AppIcons.jobExperienceCvCardIcon,
                      iconColor: Get.theme.primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: Utils.normalPadding),
                    CustomTextButton(
                      onTap: () {},
                      text: AppConstants.languageCvDrawer.tr,
                      textColor: Get.theme.primaryColorDark,
                      icon: AppIcons.languageCvCardIcon,
                      iconColor: Get.theme.primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    Row(
                      children: [
                        Expanded(child: LanguageChangeButton()),
                        Expanded(child: ThemeChangeButton()),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
