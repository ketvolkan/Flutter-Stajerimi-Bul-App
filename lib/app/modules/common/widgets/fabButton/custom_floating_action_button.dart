import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;
  const CustomFloatingActionButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed ?? () {},
      backgroundColor: Get.theme.floatingActionButtonTheme.backgroundColor,
      child: Icon(
        AppIcons.floatingActionButtonAddIcon,
        size: Utils.iconNormal,
        color: Get.theme.iconTheme.color,
      ),
    );
  }
}
