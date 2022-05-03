import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/cards/basic_card.dart';
import '../setting_management_controller.dart';
import 'menu_enum.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final MenuEnums? menuReferance;
  final String? pageReferance;
  final bool onLeading;
  final bool isBack;
  MenuButton({
    Key? key,
    required this.title,
    this.pageReferance,
    this.onLeading = true,
    this.menuReferance,
    this.isBack = false,
  }) : super(key: key);
  SettingManagementController settingManagementController = Get.find<SettingManagementController>();
  @override
  Widget build(BuildContext context) {
    return BasicCard(
      title: title,
      backArrow: isBack,
      onTap: () {
        if (pageReferance != null) Get.toNamed(pageReferance!);
        if (menuReferance != null) settingManagementController.selectedMenuListName = menuReferance!;
      },
      goToCardDescription: onLeading,
    );
  }
}
