import 'package:get/get.dart';

import 'splash_screen_controller.dart';

class SplashViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashViewController());
  }
}
