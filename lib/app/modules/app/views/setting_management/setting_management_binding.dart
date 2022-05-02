import 'package:get/get.dart';

import 'setting_management_controller.dart';

class SettingManagementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingManagementController());
  }
}
