import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/variables/icons.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/buttons/custom_icon_button.dart';
import '../../../common/widgets/fabButton/custom_floating_action_button.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import '../setting_management/menu_buttons/menu_enum.dart';
import 'employee_profile_management_controller.dart';
import 'widgets/custom_flutter_bottom_card.dart';
import 'widgets/custom_profile_top_card.dart';
import 'widgets/profile_drawer.dart';

class EmployeeProfileManagementView extends GetView<EmployeeProfileManagementController> {
  const EmployeeProfileManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      drawer: const ProfileDrawer(),
      globalKey: controller.scaffoldKey,
      appBar: _buildAppBar,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: Get.size.height / 6, child: const CustomProfileTopCard()),
          const CustomProfileBottomCard(),
        ],
      ),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: CustomFloatingActionButton(onPressed: () {
        Get.updateLocale(const Locale('en', 'US'));
      }),
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        automaticallyImplyLeading: controller.isJustShow.value,
        title: Text(AppConstants.profileAppBar.tr),
        showLeadingBackIcon: controller.isJustShow.value,
        actions: [!controller.isJustShow.value ? editCvButton : const SizedBox()],
      );

  //TODO eğer giriş yapan kullanıcı kendi profiline bakıyorsa cv editleme butonu gözükücek
  CustomIconButton get editCvButton => CustomIconButton(
        icon: AppIcons.editCvIcon,
        onTap: () {
          controller.openDrawer();
        },
      );

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Profile.index);
}
