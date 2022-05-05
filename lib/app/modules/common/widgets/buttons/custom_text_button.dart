import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/core/utils/utils.dart';
import 'package:stajyerimibul/core/variables/style.dart';

class CustomTextButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Function()? onTap;
  final Color? textColor;
  final Color? iconColor;

  const CustomTextButton({
    Key? key,
    this.icon,
    required this.text,
    this.onTap,
    this.textColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap ?? () {},
      child: Row(
        children: [
          icon != null
              ? Icon(icon, color: iconColor ?? Get.theme.appBarTheme.titleTextStyle!.color, size: Utils.iconNormal)
              : const SizedBox(),
          SizedBox(width: Utils.normalPadding),
          Text(text,
              style: textColor != null
                  ? AppTextStyle.appBarCustomTextButtonTextStyle.copyWith(color: textColor, fontSize: Utils.textSizeNormal)
                  : AppTextStyle.appBarCustomTextButtonTextStyle.copyWith(fontSize: Utils.textSizeNormal)),
        ],
      ),
    );
  }
}
