import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/app/modules/common/widgets/custom_text.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

class ActiveUserCountCard extends StatelessWidget {
  final String text;
  final int count;
  final Color backgroundColor;
  const ActiveUserCountCard({Key? key, required this.text, required this.count, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.45,
      height: Get.height * 0.1,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Utils.normalRadius),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [backgroundColor, backgroundColor.withBlue(150)],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text, textColor: Colors.white, bold: true),
            SizedBox(height: Utils.normalPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.people_outline, color: Colors.white),
                SizedBox(width: Utils.normalPadding),
                CustomText(count.toString(), textColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
