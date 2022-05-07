import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeChangeButtonController extends GetxController {
  final box = GetStorage('theme');

  final RxBool _currentThemeIsLight = true.obs;
  bool get currentThemeIsLight => _currentThemeIsLight.value;
  set currentThemeIsLight(bool val) => _currentThemeIsLight.value = val;

  @override
  void onInit() {
    _currentThemeIsLight.value = box.read("theme") ?? true;
    update();
  }
}
