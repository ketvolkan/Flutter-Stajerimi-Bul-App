import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/variables/icons.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? title;
  final bool showLeadingBackIcon;
  final Widget? customLeadingButton;
  final bool centerTitle;
  final Function()? onLeadingPressed;
  const CustomAppBar({
    Key? key,
    this.actions,
    this.title,
    this.showLeadingBackIcon = true,
    this.centerTitle = false,
    this.onLeadingPressed,
    this.customLeadingButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Get.theme.primaryColor,
      title: title ?? const SizedBox(),
      leading: showLeadingBackIcon
          ? IconButton(
              icon: Icon(
                AppIcons.appBarLeadingIcon,
                color: Get.theme.appBarTheme.titleTextStyle!.color,
              ),
              onPressed: onLeadingPressed ?? () {},
            )
          //Todo Burasını Sor
          : customLeadingButton ?? customLeadingButton,
      actions: actions ?? [],
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
