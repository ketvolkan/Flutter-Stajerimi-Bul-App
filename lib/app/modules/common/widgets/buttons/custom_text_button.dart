import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/style.dart';

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Utils.veryHighBorderRadius)),
      child: TextButton(
        onPressed: onTap ?? () {},
        child: Row(
          children: [
            icon != null
                ? Expanded(
                    flex: 1,
                    child: Icon(icon, color: iconColor ?? Get.theme.appBarTheme.titleTextStyle!.color, size: Utils.iconNormal))
                : const Expanded(child: SizedBox()),
            Expanded(child: SizedBox(width: Utils.normalPadding)),
            Expanded(
              flex: 9,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(text,
                      style: textColor != null
                          ? AppTextStyle.appBarCustomTextButtonTextStyle
                              .copyWith(color: textColor, fontSize: Utils.textSizeNormal)
                          : AppTextStyle.appBarCustomTextButtonTextStyle.copyWith(fontSize: Utils.textSizeNormal)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
