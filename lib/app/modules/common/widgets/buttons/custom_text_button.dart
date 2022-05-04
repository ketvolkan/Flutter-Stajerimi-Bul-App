import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/core/utils/utils.dart';
import 'package:stajyerimibul/core/variables/style.dart';

class CustomTextButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Function()? onTap;
  const CustomTextButton({Key? key, this.icon, required this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap ?? () {},
      child: Row(
        children: [
          icon != null
              ? Icon(icon, color: Get.theme.appBarTheme.titleTextStyle!.color, size: Utils.iconNormal)
              : const SizedBox(),
          Text(text, style: AppTextStyle.appBarCustomTextButtonTextStyle),
        ],
      ),
    );
  }
}
