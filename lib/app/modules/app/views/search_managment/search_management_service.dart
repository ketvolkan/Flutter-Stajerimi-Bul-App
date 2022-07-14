import 'package:get/get.dart';
import 'package:stajyerimibul/core/models/employee_models/employee_model.dart';
import 'package:vexana/vexana.dart';

import '../../../../../core/service/base_service.dart';

class SearchManagementService extends GetxService {
  final _networkService = Get.find<BaseService>();
  Future<List<EmployeeModel>?> getAllEmployee() async {
    final result = await _networkService.networkManager.send<EmployeeModel, List<EmployeeModel>>(
      "0RxR0V/users",
      method: RequestType.GET,
      parseModel: EmployeeModel(),
    );
    return result.data;
  }
}
