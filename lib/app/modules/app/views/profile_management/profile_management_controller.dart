import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileManagementController extends GetxController {
  //TODO Eğer başkasının sayfası ise buraya o kullanıcının modeli yollanıcak ve isJustShow true olacak
  final RxBool isJustShow = false.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  void onInit() {
    dynamic argumentData = Get.arguments;
    final _data = argumentData?['isJustShow'];
    if (_data != null) {
      isJustShow.value = _data as bool;
    }
    super.onInit();
  }
}
