import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/fabButton/custom_floating_action_button.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import 'home_management_controller.dart';

class HomeManagementView extends GetView<HomeManagementController> {
  const HomeManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: CustomBody(child: Container()),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(
        currentIndex: 1,
        backgroundColor: Get.theme.primaryColor,
        selectedItemColor: Get.theme.appBarTheme.titleTextStyle!.color,
        unSelectedItemColor: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
      );
  CustomAppBar get _buildAppBar => CustomAppBar(
        title: const Text(AppConstants.homeAppBar),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );
}
