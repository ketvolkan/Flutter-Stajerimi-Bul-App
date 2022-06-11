import 'package:get/get.dart';

class CustomFloatingActionButtonController extends GetxController {
  final Rx<bool> _isClicked = false.obs;
  bool get isClicked => _isClicked.value;
  set isClicked(bool val) => _isClicked.value = val;
  final Duration duration = const Duration(milliseconds: 200);
}
