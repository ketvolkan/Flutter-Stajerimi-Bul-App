import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/app/modules/app/views/profile_management/widgets/custom_flutter_bottom_card.dart';
import 'package:stajyerimibul/app/modules/common/widgets/buttons/custom_icon_button.dart';
import 'package:stajyerimibul/core/variables/icons.dart';

import '../../../../../core/constants/app_constants.dart';

import '../../../common/widgets/appBar/custom_app_bar.dart';

import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/fabButton/custom_floating_action_button.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import '../setting_management/menu_buttons/menu_enum.dart';
import 'widgets/custom_profile_top_card.dart';

class ProfileManagementView extends GetView<ProfileManagementView> {
  const ProfileManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: Get.size.height / 6, child: const CustomProfileTopCard()),
          const CustomProfileBottomCard(),
        ],
      ),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        title: const Text(AppConstants.profileAppBar),
        showLeadingBackIcon: false,
        actions: [editCvButton],
      );

  //TODO eğer giriş yapan kullanıcı kendi profiline bakıyorsa cv editleme butonu gözükücek
  CustomIconButton get editCvButton => const CustomIconButton(icon: AppIcons.editCvIcon);

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Profile.index);
}
