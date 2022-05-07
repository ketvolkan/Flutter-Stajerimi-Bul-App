import 'package:get/get.dart';

import '../../../../../core/models/filter_models/filter_model.dart';
import '../../../common/widgets/bottomSheet/filter_bottom_sheet/filter_bottom_sheet_view.dart';

class SearchManagementController extends GetxController {
  FilterModel? filterModel;
  void filterButtonTap() async {
    final result = await Get.bottomSheet(FilterBottomSheet(initialValues: filterModel));
    if (result == null) return;
    //? print(result);
  }
}
