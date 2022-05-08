import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EmployeeProfileManagementController extends GetxController {
  //TODO Eğer başkasının sayfası ise buraya o kullanıcının modeli yollanıcak ve isJustShow true olacak
  final RxBool isJustShow = false.obs;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final box = GetStorage();

  final RxBool _currentThemeIsLight = true.obs;
  bool get currentThemeIsLight => _currentThemeIsLight.value;
  set currentThemeIsLight(bool val) => _currentThemeIsLight.value = val;

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void changeTheme(bool val) {
    Get.changeThemeMode(currentThemeIsLight ? ThemeMode.dark : ThemeMode.light);
    currentThemeIsLight = val;
    box.write("theme", currentThemeIsLight);
  }

  @override
  void onInit() {
    currentThemeIsLight = box.read("theme") ?? true;

    dynamic argumentData = Get.arguments;
    final _data = argumentData?['isJustShow'];
    if (_data != null) {
      isJustShow.value = _data as bool;
    }
    super.onInit();
  }
}
