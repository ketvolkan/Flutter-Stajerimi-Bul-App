import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';

class CustomBody extends StatelessWidget {
  final Widget? child;
  const CustomBody({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.primaryColor,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Utils.veryHighBorderRadius)),
        child: Container(color: Get.theme.backgroundColor, child: child ?? const SizedBox()),
      ),
    );
  }
}
