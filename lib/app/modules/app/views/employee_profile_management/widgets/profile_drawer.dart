import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/variables/icons.dart';
import '../../../../../../core/variables/style.dart';
import '../../../../common/widgets/buttons/custom_text_button.dart';

class ProfileDrawer extends StatelessWidget {
  final Function()? closeOnTap;
  const ProfileDrawer({Key? key, this.closeOnTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: DrawerHeader(
              child: SizedBox(
                width: Get.size.width,
                child: Text(
                  'Profil Güncelle',
                  style:
                      AppTextStyle.appBarTextStyle.copyWith(color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Get.theme.primaryColor,
              ),
            ),
          ),
          Expanded(
            flex: 13,
            child: Padding(
              padding: EdgeInsets.all(Utils.normalPadding),
              child: Column(
                children: [
                  CustomTextButton(
                    onTap: () {},
                    text: "Profil Bilgileri",
                    textColor: Get.theme.primaryColorDark,
                    icon: AppIcons.bottomNavigationBarAccount,
                    iconColor: Get.theme.primaryColor,
                  ),
                  SizedBox(height: Utils.normalPadding),
                  CustomTextButton(
                    onTap: () {},
                    text: "Hakkımda ",
                    textColor: Get.theme.primaryColorDark,
                    icon: AppIcons.aboutCvCardIcon,
                    iconColor: Get.theme.primaryColor,
                  ),
                  SizedBox(height: Utils.normalPadding),
                  CustomTextButton(
                    onTap: () {},
                    text: "Okul Bilgileri",
                    textColor: Get.theme.primaryColorDark,
                    icon: AppIcons.schoolCvCardIcon,
                    iconColor: Get.theme.primaryColor,
                  ),
                  SizedBox(height: Utils.normalPadding),
                  CustomTextButton(
                    onTap: () {},
                    text: "İş Tecrübeleri",
                    textColor: Get.theme.primaryColorDark,
                    icon: AppIcons.jobExperienceCvCardIcon,
                    iconColor: Get.theme.primaryColor,
                  ),
                  SizedBox(height: Utils.normalPadding),
                  CustomTextButton(
                    onTap: () {},
                    text: "Bildiğim Diller",
                    textColor: Get.theme.primaryColorDark,
                    icon: AppIcons.languageCvCardIcon,
                    iconColor: Get.theme.primaryColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
