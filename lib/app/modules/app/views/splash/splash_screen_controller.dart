import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class SplashViewController extends GetxController {
  Future<bool> splashEnd() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoutes.HOME);
    });
    return true;
  }
}
