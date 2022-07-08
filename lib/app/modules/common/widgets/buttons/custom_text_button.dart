import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../custom_text.dart';

import '../../../../../core/utils/utils.dart';

class CustomTextButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Function()? onTap;
  final Color? textColor;
  final Color? iconColor;
  final Color? backgroundColor;

  const CustomTextButton({
    Key? key,
    this.icon,
    required this.text,
    this.onTap,
    this.textColor,
    this.iconColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor ?? Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Utils.normalRadius)),
      child: TextButton(
        onPressed: onTap ?? () {},
        child: Row(
          children: [
            icon != null
                ? Icon(icon, color: iconColor ?? Get.theme.appBarTheme.titleTextStyle!.color, size: Utils.normalIconSize)
                : const SizedBox(),
            SizedBox(width: Utils.normalPadding),
            Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(fit: BoxFit.scaleDown, child: CustomText(text, textColor: textColor)),
            ),
          ],
        ),
      ),
    );
  }
}
