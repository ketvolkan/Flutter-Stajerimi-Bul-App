import '../../service/base_model.dart';

class ExampleModel extends BaseModel {
  final int? id;
  final int? userId;
  final String? title;
  final String? body;

  ExampleModel({this.id, this.userId, this.title, this.body});

  factory ExampleModel.fromJson(Map<String, dynamic> json) => ExampleModel(
        id: json['id'],
        userId: json['userId'],
        title: json['title'],
        body: json['body'],
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['title'] = title;
    data['body'] = body;
    return data;
  }

  @override
  fromJson(Map<String, dynamic> json) => ExampleModel.fromJson(json);
}
