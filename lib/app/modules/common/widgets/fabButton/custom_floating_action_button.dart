import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/app/modules/common/widgets/fabButton/custom_floating_action_button_controller.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final IconData fabIcon;
  final double? iconSize;
  final Color? iconColor;

  const CustomFloatingActionButton({
    Key? key,
    this.fabIcon = AppIcons.floatingActionButtonAddIcon,
    this.iconSize,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomFloatingActionButtonController controller = Get.find();
    return Obx(
      () => CircleAvatar(
        backgroundColor: controller.isClicked ? Colors.white : Colors.transparent,
        radius: Get.width * 0.085,
        child: AnimatedRotation(
          turns: controller.isClicked ? 0.12 : 0.0,
          duration: controller.duration,
          child: FloatingActionButton(
            onPressed: () => controller.isClicked = !controller.isClicked,
            backgroundColor: Get.theme.floatingActionButtonTheme.backgroundColor,
            child: Icon(fabIcon, size: iconSize ?? Utils.iconHigh - 5, color: iconColor ?? Get.theme.iconTheme.color),
          ),
        ),
      ),
    );
  }
}
