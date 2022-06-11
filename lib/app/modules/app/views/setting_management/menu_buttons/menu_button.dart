import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

import '../../../../common/widgets/cards/basic_card.dart';
import '../setting_management_controller.dart';
import 'menu_enum.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final MenuEnums? menuReferance;
  final String? pageReferance;
  final bool onLeading;
  final bool isBack;
  final Function()? onTap;
  final IconData? customLeadingIcon;
  final Widget? customLeadingWidget;
  MenuButton({
    Key? key,
    required this.title,
    this.pageReferance,
    this.onLeading = true,
    this.menuReferance,
    this.isBack = false,
    this.customLeadingIcon,
    this.onTap,
    this.customLeadingWidget,
  }) : super(key: key);
  SettingManagementController settingManagementController = Get.find<SettingManagementController>();
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: BasicCard(
        cardOutPadding: EdgeInsets.symmetric(horizontal: Utils.normalPadding),
        title: title,
        borderRadius: Utils.normalBorderRadius,
        backArrow: isBack,
        onTap: onTap ??
            () {
              if (pageReferance != null) Get.toNamed(pageReferance!);
              if (menuReferance != null) settingManagementController.selectedMenuListName = menuReferance!;
            },
        goToCardDescription: onLeading,
        customLeadingIcon: customLeadingIcon,
        customLeadingWidget: customLeadingWidget,
      ),
    );
  }
}
