import 'package:flutter/material.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/color.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final double? size;
  final Color? color;
  final Color? backgroundColor;
  final double borderRadius;

  const CustomIconButton({
    Key? key,
    required this.icon,
    this.onTap,
    this.size,
    this.color,
    this.backgroundColor,
    this.borderRadius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        margin: EdgeInsets.all(Utils.normalPadding),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(borderRadius), color: backgroundColor ?? Colors.transparent),
        padding: EdgeInsets.all(Utils.veryLowPadding),
        child: Icon(icon, size: size ?? Utils.iconNormal, color: color ?? AppColor.bottomNavBarItemColor),
      ),
    );
  }
}
