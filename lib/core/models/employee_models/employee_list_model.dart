import '../../service/base_model.dart';
import 'employee_model.dart';

class EmployeeListModel extends BaseModel {
  List<EmployeeModel>? employees;

  EmployeeListModel({
    this.employees,
  });
  @override
  EmployeeListModel.fromJson(Map<String, dynamic> json) {
    employees = modelListDecode(json['data'], EmployeeModel());
  }
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (employees is List<EmployeeModel>) {
      data["data"] = employees!.map((e) => e.toJson());
    }
    return data;
  }

  @override
  fromJson(Map<String, dynamic> json) => EmployeeListModel.fromJson(json);
}
