import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/fabButton/CustomFloatingActionButton.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
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
              return SizedBox(height: Utils.highPadding);
            },
            itemCount: controller.selectedMenuItems.length + 1,
          ),
        ),
      ),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(
        currentIndex: 3,
        backgroundColor: Get.theme.primaryColor,
        selectedItemColor: Get.theme.appBarTheme.titleTextStyle!.color,
        unSelectedItemColor: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
      );
  CustomAppBar get _buildAppBar => CustomAppBar(
        title: const Text(
          AppConstants.settingAppBar,
        ),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );
}
