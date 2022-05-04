import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/core/utils/utils.dart';
import 'package:stajyerimibul/core/variables/style.dart';

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
            icon != null
                ? Expanded(flex: 1, child: Icon(icon, color: Get.theme.primaryColor, size: Utils.iconNormal))
                : const SizedBox(),
            Expanded(flex: 4, child: Text(title, style: AppTextStyle.baseCvCardTextStyle)),
          ],
        ),
        const Divider(thickness: 3),
        child
      ],
    );
  }
}
