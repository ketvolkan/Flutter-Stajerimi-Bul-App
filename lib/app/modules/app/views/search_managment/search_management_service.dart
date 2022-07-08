import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../../core/models/employee_models/employee_list_model.dart';
import '../../../../../core/service/base_service.dart';

class SearchManagementService extends GetxService {
  final _networkService = Get.find<BaseService>();
  Future<EmployeeListModel?> getAllEmployee() async {
    final result = await _networkService.dio.get(
      "0RxR0V/users",
      options: Options(method: "GET", responseType: ResponseType.json),
    );
    return EmployeeListModel.fromJson({'data': result.data});
  }
}
