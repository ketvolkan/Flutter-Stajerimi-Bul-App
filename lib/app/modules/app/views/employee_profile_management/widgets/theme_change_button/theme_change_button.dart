import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../core/constants/app_constants.dart';
import '../../../../../../../../core/variables/icons.dart';
import '../../../../../common/widgets/buttons/custom_toggle_button.dart';
import '../../employee_profile_management_controller.dart';

class ThemeChangeButton extends StatelessWidget {
  ThemeChangeButton({Key? key}) : super(key: key);
  EmployeeProfileManagementController controller = Get.find<EmployeeProfileManagementController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: Get.size.width / 2.4,
        child: CustomToggleButton(
          current: controller.currentThemeIsLight,
          firstText: AppConstants.lightTheme.tr,
          secondText: AppConstants.darkTheme.tr,
          firstIcon: AppIcons.lightIcon,
          secondIcon: AppIcons.darkIcon,
          onChanged: (val) {
            controller.changeTheme(val);
          },
        ),
      ),
    );
  }
}
