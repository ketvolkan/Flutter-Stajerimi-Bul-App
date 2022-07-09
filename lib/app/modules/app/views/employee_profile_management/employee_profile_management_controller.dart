import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:stajyerimibul/app/modules/controllers/auth_login_controller.dart';
import 'package:stajyerimibul/core/models/employee_models/employee_model.dart';

class EmployeeProfileManagementController extends GetxController {
  final AuthLoginController _authLoginController = Get.find<AuthLoginController>();
  //TODO Eğer başkasının sayfası ise buraya o kullanıcının modeli yollanıcak ve isJustShow true olacak
  final RxBool isJustShow = false.obs;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final box = GetStorage();

  //Todo User Model den Gelice
  final name = "Volkan Ket";

  final RxBool _currentThemeIsLight = true.obs;
  bool get currentThemeIsLight => _currentThemeIsLight.value;
  set currentThemeIsLight(bool val) => _currentThemeIsLight.value = val;

  final RxBool _currentLocal = true.obs;
  bool get currentLocal => _currentLocal.value;
  set currentLocal(bool val) => _currentLocal.value = val;

  EmployeeModel? employeeModel;

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void changeTheme(bool val) async {
    Get.changeThemeMode(currentThemeIsLight ? ThemeMode.dark : ThemeMode.light);
    currentThemeIsLight = val;
    box.write("theme", currentThemeIsLight);
  }

  void changeLocal(bool val) {
    Get.updateLocale(!val ? const Locale('en', 'US') : const Locale('tr', 'TR'));
    currentLocal = val;
    box.write("local", currentLocal);
  }

  @override
  void onInit() {
    fillStorage();
    fillArguments();
    super.onInit();
  }

  void fillStorage() {
    currentThemeIsLight = box.read("theme") ?? true;
    currentLocal = box.read('local') ?? true;
  }

  void fillArguments() {
    dynamic argumentData = Get.arguments;
    final _data = argumentData?['employee'];
    if (_data != null) {
      employeeModel = _data;
      isJustShow.value = true;
      return;
    }
    employeeModel = _authLoginController.auth;
  }
}
