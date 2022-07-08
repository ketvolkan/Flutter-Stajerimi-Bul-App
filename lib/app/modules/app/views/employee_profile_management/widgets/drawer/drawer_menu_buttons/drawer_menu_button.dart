import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../core/utils/utils.dart';
import '../../../../../../common/widgets/cards/basic_card.dart';

class DrawerMenuButton extends StatelessWidget {
  final String title;

  final String? pageReferance;
  final bool onLeading;
  final bool isBack;
  final Function()? onTap;
  final IconData? customLeadingIcon;
  final Widget? customLeadingWidget;
  const DrawerMenuButton({
    Key? key,
    required this.title,
    this.pageReferance,
    this.onLeading = true,
    this.isBack = false,
    this.customLeadingIcon,
    this.onTap,
    this.customLeadingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      cardOutPadding: EdgeInsets.symmetric(horizontal: Utils.normalPadding),
      title: title,
      borderRadius: Utils.normalRadius,
      backArrow: isBack,
      onTap: onTap ??
          () {
            if (pageReferance != null) Get.toNamed(pageReferance!);
          },
      goToCardDescription: onLeading,
      customLeadingIcon: customLeadingIcon,
      customLeadingWidget: customLeadingWidget,
    );
  }
}
