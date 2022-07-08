import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: Colors.transparent,
      color: Get.theme.primaryColor.withOpacity(0.8),
      minHeight: Get.width * 0.02,
    );
  }
}
