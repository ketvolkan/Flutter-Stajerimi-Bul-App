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

  final RxBool _currentLocal = true.obs;
  bool get currentLocal => _currentLocal.value;
  set currentLocal(bool val) => _currentLocal.value = val;

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
    currentThemeIsLight = box.read("theme") ?? true;
    currentLocal = box.read('local') ?? true;
    dynamic argumentData = Get.arguments;
    final _data = argumentData?['isJustShow'];
    if (_data != null) {
      isJustShow.value = _data as bool;
    }
    super.onInit();
  }
}
