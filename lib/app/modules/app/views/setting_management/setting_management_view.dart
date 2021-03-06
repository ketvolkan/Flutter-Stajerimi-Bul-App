import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/style.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import 'menu_buttons/menu_enum.dart';
import 'setting_management_controller.dart';

class SettingManagementView extends GetView<SettingManagementController> {
  const SettingManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: CustomBody(
        child: Obx(
          () => ListView.separated(
            itemBuilder: (context, index) {
              return index == 0 ? SizedBox(height: Utils.normalPadding) : controller.selectedMenuItems[index - 1];
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: Utils.lowPadding);
            },
            itemCount: controller.selectedMenuItems.length + 1,
          ),
        ),
      ),
      bottomNavigationBar: _buildNavigationBar,
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        title: AutoSizeText(
          AppConstants.settingAppBar.tr,
          maxFontSize: 35,
          minFontSize: 25,
          style: AppTextStyle.appBarTextStyle,
        ),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Setting.index);
}
