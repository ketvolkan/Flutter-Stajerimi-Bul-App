import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/custom_text.dart';

import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../core/variables/style.dart';

class CvBaseCard extends StatelessWidget {
  final String title;
  final Widget child;
  final IconData? icon;

  const CvBaseCard({
    Key? key,
    required this.title,
    required this.child,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon != null ? Icon(icon, color: Get.theme.primaryColor, size: Utils.iconNormal) : const SizedBox(),
            SizedBox(width: Utils.normalPadding),
            CustomText(title, style: AppTextStyle.baseCvCardTextStyle),
          ],
        ),
        const Divider(thickness: 3),
        child
      ],
    );
  }
}
