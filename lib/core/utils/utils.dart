import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Utils {
  //? Icon Size
  static double iconSmall = Get.height * 0.02;
  static double iconNormal = Get.height * 0.03;
  static double iconHigh = Get.height * 0.045;

  //? Padding
  static double veryLowPadding = Get.height * 0.003;
  static double lowPadding = Get.height * 0.0075;
  static double normalPadding = Get.height * 0.015;
  static double highPadding = Get.height * 0.03;
  static double veryHighPadding = Get.height * 0.09;
  static double veryVeryHighPadding = Get.height * 0.15;

  //? Text Size
  static double textSizeLow = Get.height * 0.015;
  static double textSizeSubtitle = Get.height * 0.020;
  static double textSizeTitle = Get.height * 0.024;
  static double textSizeNormal = Get.height * 0.02;
  static double textSizeHigh = Get.height * 0.036;
  static double textSizeVeryHigh = Get.height * 0.045;

  //? BorderRadius
  static double lowBorderRadius = Get.height * 0.005;
  static double normalBorderRadius = Get.height * 0.015;
  static double highBorderRadius = Get.height * 0.03;
  static double veryHighBorderRadius = Get.height * 0.045;

  //? FontWeight
  static FontWeight lowFontWeight = FontWeight.w300;
  static FontWeight normalFontWeight = FontWeight.normal;
  static FontWeight boldFontWeight = FontWeight.bold;

  //? Durations
  static const lowDuration = 200;
  static const normalDuration = 400;
  static const highDuration = 600;
}
