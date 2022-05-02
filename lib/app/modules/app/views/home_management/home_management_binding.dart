import 'package:get/get.dart';
import 'package:stajyerimibul/app/modules/app/views/home_management/home_management_controller.dart';

class HomeManagementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeManagementController());
  }
}
