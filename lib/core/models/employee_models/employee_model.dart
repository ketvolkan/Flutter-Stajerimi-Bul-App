import '../../service/base_model.dart';

class EmployeeModel extends BaseModel {
  int? id;
  String? email;
  String? adress;
  String? aboutMe;
  String? password;
  String? lastName;
  String? firstName;
  bool? showTrailer;
  String? dateOfBirth;

  EmployeeModel(
      {this.id,
      this.email,
      this.adress,
      this.aboutMe,
      this.password,
      this.lastName,
      this.firstName,
      this.showTrailer,
      this.dateOfBirth});
  @override
  EmployeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    adress = json['adress'];
    aboutMe = json['about_me'];
    password = json['password'];
    lastName = json['last_name'];
    firstName = json['first_name'];
    showTrailer = json['show_trailer'];
    dateOfBirth = json['date_of_birth'];
  }
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['adress'] = adress;
    data['about_me'] = aboutMe;
    data['password'] = password;
    data['last_name'] = lastName;
    data['first_name'] = firstName;
    data['show_trailer'] = showTrailer;
    data['date_of_birth'] = dateOfBirth;
    return data;
  }

  @override
  fromJson(Map<String, dynamic> json) => EmployeeModel.fromJson(json);
}
