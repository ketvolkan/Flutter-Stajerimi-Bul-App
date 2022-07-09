import 'package:get/get.dart';

import '../../../core/models/employee_models/employee_model.dart';

class AuthLoginController extends GetxController {
  late EmployeeModel auth;
  @override
  void onInit() {
    auth = login("ketvolkan1@gmail.com", "1626");
    super.onInit();
  }

  //Todo Uygulamaya giriş yaptığı zaman veri burdan gelicek şimdilik elimle doldurdum
  EmployeeModel login(String email, String password) {
    return EmployeeModel(
      firstName: "Volkan",
      lastName: "Ket",
      aboutMe: "Flutter Developer",
      dateOfBirth: "15 April 2002",
      email: "Ketvolkan1@gmail.com",
      adress: "İstanbul/Beylikdüzü",
      password: "1626",
      showTrailer: true,
      id: 16,
    );
  }
}
