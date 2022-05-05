import 'package:get/get.dart';

import 'employee_profile_management_controller.dart';

class EmployeeProfileManagementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmployeeProfileManagementController());
  }
}
