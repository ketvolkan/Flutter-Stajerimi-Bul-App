import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../core/constants/app_constants.dart';
import '../../../../../../../../core/variables/icons.dart';
import '../../../../../../common/widgets/buttons/custom_toggle_button.dart';
import 'theme_change_button_controller.dart';

class ThemeChangeButton extends StatelessWidget {
  const ThemeChangeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeChangeButtonController>(
        init: ThemeChangeButtonController(),
        builder: (controller) {
          return Obx(
            () => CustomToggleButton(
              current: controller.currentThemeIsLight,
              firstText: AppConstants.lightTheme,
              secondText: AppConstants.darkTheme,
              firstIcon: AppIcons.lightIcon,
              secondIcon: AppIcons.darkIcon,
              onChanged: (val) {
                Get.changeThemeMode(controller.currentThemeIsLight ? ThemeMode.dark : ThemeMode.light);
                controller.currentThemeIsLight = val;
                controller.box.write("theme", controller.currentThemeIsLight);
              },
            ),
          );
        });
  }
}
