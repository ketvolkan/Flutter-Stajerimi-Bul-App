import 'package:get/get.dart';

import 'search_management_controller.dart';
import 'search_management_service.dart';

class SearchManagementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchManagementService());
    Get.lazyPut(() => SearchManagementController());
  }
}
