import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/utils/utils.dart';
import '../../../../../common/widgets/custom_text.dart';

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
      children: [titleRow(), const Divider(thickness: 3), child],
    );
  }

  Row titleRow() {
    return Row(
      children: [
        icon != null ? Icon(icon, color: Get.theme.primaryColor, size: Utils.highIconSize) : const SizedBox(),
        SizedBox(width: Utils.normalPadding),
        CustomText.high(title),
      ],
    );
  }
}
