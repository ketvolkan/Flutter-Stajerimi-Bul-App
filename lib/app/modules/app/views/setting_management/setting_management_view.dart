import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/cards/basic_card.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Utils.highPadding,
              ),
              BasicCard(
                title: "Ayarlar",
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "İletişim",
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Sistem Logları",
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Temalar",
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "İlanlar",
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Sayfa",
                onTap: () {},
              ),
              SizedBox(
                height: Utils.veryVeryHighPadding,
              ),
            ],
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
        title: Text(
          AppConstants.settingAppBar,
          style: AppTextStyle.appBarTextStyle,
        ),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );
}
