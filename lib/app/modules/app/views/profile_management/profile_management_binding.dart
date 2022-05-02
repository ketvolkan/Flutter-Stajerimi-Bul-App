import 'package:get/get.dart';

import 'profile_management_controller.dart';

class ProfileManagementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileManagementController());
  }
}
