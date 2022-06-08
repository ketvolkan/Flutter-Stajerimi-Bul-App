import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'language_change_button.dart/language_change_button.dart';
import 'theme_change_button/theme_change_button.dart';
import '../../../../common/widgets/custom_text.dart';

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
            SizedBox(
              height: Get.size.height * 0.13,
              child: DrawerHeader(
                child: SizedBox(
                  width: Get.size.width,
                  child: CustomText(AppConstants.updateProfileDrawer.tr, style: AppTextStyle.drawerTitleTextStyle),
                ),
                decoration: BoxDecoration(color: Get.theme.primaryColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Utils.normalPadding),
              child: Column(
                children: [
                  profileInfo,
                  SizedBox(height: Utils.normalPadding),
                  aboutMe,
                  SizedBox(height: Utils.normalPadding),
                  schoolInfo,
                  SizedBox(height: Utils.normalPadding),
                  jobInfo,
                  SizedBox(height: Utils.normalPadding),
                  languageInfo,
                  FittedBox(
                    child: Row(
                      children: [
                        LanguageChangeButton(),
                        ThemeChangeButton(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  CustomTextButton get profileInfo => CustomTextButton(
        onTap: () {},
        text: AppConstants.profileAboutDrawer.tr,
        textColor: Get.theme.primaryColorDark,
        icon: AppIcons.bottomNavigationBarAccount,
        iconColor: Get.theme.primaryColor,
        backgroundColor: Colors.white,
      );
  CustomTextButton get aboutMe => CustomTextButton(
        onTap: () {},
        text: AppConstants.aboutMeDrawer.tr,
        textColor: Get.theme.primaryColorDark,
        icon: AppIcons.aboutCvCardIcon,
        iconColor: Get.theme.primaryColor,
        backgroundColor: Colors.white,
      );

  CustomTextButton get schoolInfo => CustomTextButton(
        onTap: () {},
        text: AppConstants.schoolCvDrawer.tr,
        textColor: Get.theme.primaryColorDark,
        icon: AppIcons.schoolCvCardIcon,
        iconColor: Get.theme.primaryColor,
        backgroundColor: Colors.white,
      );

  CustomTextButton get jobInfo => CustomTextButton(
        onTap: () {},
        text: AppConstants.jobCvDrawer.tr,
        textColor: Get.theme.primaryColorDark,
        icon: AppIcons.jobExperienceCvCardIcon,
        iconColor: Get.theme.primaryColor,
        backgroundColor: Colors.white,
      );

  CustomTextButton get languageInfo => CustomTextButton(
        onTap: () {},
        text: AppConstants.languageCvDrawer.tr,
        textColor: Get.theme.primaryColorDark,
        icon: AppIcons.languageCvCardIcon,
        iconColor: Get.theme.primaryColor,
        backgroundColor: Colors.white,
      );
}
