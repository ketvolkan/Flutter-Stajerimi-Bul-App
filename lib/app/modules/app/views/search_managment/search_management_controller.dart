import 'package:get/get.dart';
import '../../../../routes/app_routes.dart';

import '../../../../../core/models/employee_models/employee_model.dart';
import '../../../../../core/models/filter_models/filter_model.dart';
import '../../../common/widgets/bottomSheet/filter_bottom_sheet/filter_bottom_sheet_view.dart';
import 'search_management_service.dart';

enum SearchManagementState { Initial, Busy, Loaded, Error }

class SearchManagementController extends GetxController {
  final SearchManagementService _searchManagementService = Get.find<SearchManagementService>();

  final Rx<SearchManagementState> _state = SearchManagementState.Initial.obs;
  SearchManagementState get state => _state.value;
  set state(SearchManagementState val) => _state.value = val;

  FilterModel? filterModel;
  final RxBool _selectedCategory = false.obs;
  bool get selectedCategory => _selectedCategory.value;
  set selectedCategory(bool val) => _selectedCategory.value = val;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool val) => _isLoading.value = val;

  final RxList<EmployeeModel> _employeeList = <EmployeeModel>[].obs;
  List<EmployeeModel> get employeeList => _employeeList.value;
  set employeeList(List<EmployeeModel> val) => _employeeList.value = val;

  @override
  void onInit() {
    ever(_state, (state) {
      switch (state) {
        case SearchManagementState.Busy:
          isLoading = true;
          break;
        case SearchManagementState.Initial:
          isLoading = false;
          break;
        case SearchManagementState.Error:
          isLoading = false;
          break;
        case SearchManagementState.Loaded:
          isLoading = false;
          break;
        default:
      }
    });
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    await getAllEmployee();
  }

  void basicCardOnTap(EmployeeModel employeeModel) async {
    final result = await Get.toNamed(AppRoutes.PROFILE, arguments: {"employee": employeeModel});
  }

  Future<void> getAllEmployee() async {
    try {
      state = SearchManagementState.Busy;
      final result = await _searchManagementService.getAllEmployee();
      state = SearchManagementState.Loaded;
      if (result is! List<EmployeeModel>) return;
      employeeList = result;
    } catch (e) {
      state = SearchManagementState.Error;
      Exception(e);
    }
  }

  void filterButtonTap() async {
    final result = await Get.bottomSheet(FilterBottomSheet(initialValues: filterModel));
    if (result == null) return;
    //? print(result);
  }
}
