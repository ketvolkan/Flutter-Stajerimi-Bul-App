import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class SplashViewController extends GetxController {
  void splashEnd() {
    Future.delayed(const Duration(seconds: 3)).then((value) => Get.offAndToNamed(AppRoutes.HOME));
  }

  @override
  void onInit() {
    super.onInit();
    splashEnd();
  }
}
