import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/fabButton/CustomFloatingActionButton.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';

class ProfileManagementView extends GetView<ProfileManagementView> {
  const ProfileManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: CustomBody(
        child: Container(),
      ),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(
        currentIndex: 0,
        backgroundColor: Get.theme.primaryColor,
        selectedItemColor: Get.theme.appBarTheme.titleTextStyle!.color,
        unSelectedItemColor: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
      );
  CustomAppBar get _buildAppBar => CustomAppBar(
        title: const Text(
          AppConstants.profileAppBar,
        ),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );
}
