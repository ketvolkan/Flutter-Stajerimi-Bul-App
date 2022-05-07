import 'package:get/get.dart';

import '../../../../../../core/models/filter_models/filter_model.dart';

class FilterModelBottomSheetController extends GetxController {
  FilterModel? filterModel;

  void saveFilterButton() {
    if (filterModel!.jobTitle == null) {
      Get.back(result: FilterModel(start: filterModel!.start, end: filterModel!.end, jobTitle: null));
      return;
    }
    Get.back(result: FilterModel(start: filterModel!.start, end: filterModel!.end, jobTitle: filterModel!.jobTitle));
  }
}
