import 'package:get/get.dart';

import 'search_management_controller.dart';

class SearchManagementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchManagementController());
  }
}
