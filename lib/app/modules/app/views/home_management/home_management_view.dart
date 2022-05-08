import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../routes/app_routes.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/fabButton/custom_floating_action_button.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import '../setting_management/menu_buttons/menu_enum.dart';
import 'home_management_controller.dart';

class HomeManagementView extends GetView<HomeManagementController> {
  const HomeManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: CustomBody(child: Container()),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: CustomFloatingActionButton(
          //!Deneme Amaçlı Yazıldı Normalde Yok
          onPressed: () => Get.toNamed(
                AppRoutes.PROFILE,
                arguments: {'isJustShow': true},
              )),
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        title: Text(AppConstants.homeAppBar),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Home.index);
}
