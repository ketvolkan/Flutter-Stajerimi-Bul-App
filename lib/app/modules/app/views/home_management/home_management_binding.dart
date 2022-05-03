import 'package:get/get.dart';

import 'home_management_controller.dart';

class HomeManagementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeManagementController());
  }
}
