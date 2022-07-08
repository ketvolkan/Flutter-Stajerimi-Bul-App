import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';

class CustomBody extends StatelessWidget {
  final Widget? child;
  final double? height;
  const CustomBody({Key? key, this.child, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Get.theme.primaryColor),
      child: SizedBox(
        width: Get.size.width,
        height: height ?? Get.size.height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Get.theme.backgroundColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(Utils.extraHighRadius)),
          ),
          child: child ?? const SizedBox(),
        ),
      ),
    );
  }
}
