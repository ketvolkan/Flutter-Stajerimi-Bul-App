import 'package:flutter/material.dart';

import '../../../../../core/variables/color.dart';
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
      backgroundColor: Theme.of(context).primaryColor,
      title: title ?? const SizedBox(),
      leading: showLeadingBackIcon
          ? IconButton(
              icon: const Icon(
                AppIcons.appBarLeadingIcon,
                color: AppColor.bottomNavBarItemColor,
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
