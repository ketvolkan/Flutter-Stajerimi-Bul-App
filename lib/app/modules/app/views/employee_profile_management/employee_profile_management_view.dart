import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/models/employee_models/employee_model.dart';
import '../../../../../core/variables/icons.dart';
import '../../../../../core/variables/style.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/buttons/custom_icon_button.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import '../setting_management/menu_buttons/menu_enum.dart';
import 'employee_profile_management_controller.dart';
import 'widgets/custom_profile_bottom_card.dart';
import 'widgets/custom_profile_top_card.dart';
import 'widgets/drawer/profile_drawer.dart';

class EmployeeProfileManagementView extends GetView<EmployeeProfileManagementController> {
  const EmployeeProfileManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      drawer: ProfileDrawer(),
      globalKey: controller.scaffoldKey,
      appBar: _buildAppBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (controller.employeeModel is EmployeeModel) CustomProfileTopCard(employeeModel: controller.employeeModel!),
            const CustomProfileBottomCard(),
          ],
        ),
      ),
      bottomNavigationBar: _buildNavigationBar,
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        automaticallyImplyLeading: controller.isJustShow.value,
        title: AutoSizeText(
          "${controller.employeeModel?.firstName} ${controller.employeeModel?.lastName}",
          maxFontSize: 35,
          minFontSize: 25,
          style: AppTextStyle.appBarTextStyle,
        ),
        centerTitle: true,
        showLeadingBackIcon: controller.isJustShow.value,
        actions: [!controller.isJustShow.value ? editCvButton : const SizedBox()],
      );

  //TODO eğer giriş yapan kullanıcı kendi profiline bakıyorsa cv editleme butonu gözükücek
  CustomIconButton get editCvButton => CustomIconButton(icon: AppIcons.editCvIcon, onTap: controller.openDrawer);

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Profile.index);
}
