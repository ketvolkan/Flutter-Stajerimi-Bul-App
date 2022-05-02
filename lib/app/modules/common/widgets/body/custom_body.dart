import 'package:flutter/material.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/color.dart';

class CustomBody extends StatelessWidget {
  final Widget? child;
  const CustomBody({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Utils.veryHighBorderRadius)),
        child: Container(color: AppColor.backgroundColor, child: child ?? const SizedBox()),
      ),
    );
  }
}
