import '../service/base_model.dart';

class ResponseModel extends BaseModel {
  String? _data;
  int? _statusCode;

  ResponseModel({String? data, int? statusCode}) {
    if (data != null) {
      _data = data;
    }
    if (statusCode != null) {
      _statusCode = statusCode;
    }
  }

  ResponseModel.fromJson(Map<String, dynamic> json) {
    _data = json['data'];
    _statusCode = json['statusCode'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = _data;
    data['statusCode'] = _statusCode;
    return data;
  }

  @override
  fromJson(Map<String, dynamic> json) {
    _data = json['data'];
    _statusCode = json['statusCode'];
  }
}
