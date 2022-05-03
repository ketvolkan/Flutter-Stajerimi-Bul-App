import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;
  final IconData fabIcon;
  final double? iconSize;
  final Color? iconColor;

  const CustomFloatingActionButton({
    Key? key,
    this.onPressed,
    this.fabIcon = AppIcons.floatingActionButtonAddIcon,
    this.iconSize,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed ?? () {},
      backgroundColor: Get.theme.floatingActionButtonTheme.backgroundColor,
      child: Icon(fabIcon, size: iconSize ?? Utils.iconNormal, color: iconColor ?? Get.theme.iconTheme.color),
    );
  }
}
