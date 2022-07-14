import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../common/widgets/custom_text.dart';
import 'splash_screen_controller.dart';

class SplashView extends GetView<SplashViewController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! İleride kaldırlacak
    controller.splashEnd();
    //!
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Utils.normalPadding),
              child: Image(image: AssetImage(AppConstants.logoPath)),
            ),
            SizedBox.square(
              dimension: Get.width * 0.2,
              child: CircularProgressIndicator(color: Get.theme.primaryColor, strokeWidth: 8),
            ),
            SizedBox(height: Get.width * 0.5),
            CustomText.extraHigh("By Ket Dev 😜", bold: true, textColor: Get.theme.primaryColor),
          ],
        ),
      ),
    );
  }
}
