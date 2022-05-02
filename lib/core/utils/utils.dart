import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  //? İcon Size
  static double iconSmall = 20;
  static double iconNormal = 30;
  static double iconHigh = 40;

  //?Padding
  static double veryLowPadding = 2;
  static double lowPadding = 5;
  static double normalPadding = 10;
  static double highPadding = 20;
  static double veryHighPadding = 60;
  static double veryVeryHighPadding = 100;

  //? Text Size
  static double textSizeLow = 10;
  static double textSizeTitle = 16;
  static double textSizeNormal = 20;
  static double textSizeHigh = 24;
  static double textSizeVeryHigh = 30;

  //?BorderRadius
  static double lowBorderRadius = 5;
  static double normalBorderRadius = 10;
  static double highBorderRadius = 20;
  static double veryHighBorderRadius = 30;

  //?FontWeight
  static FontWeight lowFontWeight = FontWeight.w300;
  static FontWeight normalFontWeight = FontWeight.normal;
  static FontWeight boldFontWeight = FontWeight.bold;

  //?Durations
  static const lowDuration = 200;
  static const normalDuration = 400;
  static const highDuration = 600;
}

class AppTextStyle {
  //? APP BAR STYLE
  static TextStyle appBarTextStyle = GoogleFonts.getFont('Josefin Sans').copyWith(
    fontSize: Utils.textSizeVeryHigh,
    fontWeight: Utils.boldFontWeight,
  );
  //? BASİC CARD STYLE
  static TextStyle basicCardTitleTextStyle = TextStyle(
    color: Get.theme.primaryColorDark,
    fontSize: Utils.textSizeTitle,
  );
  static TextStyle basicCardSubTitleTextStyle = TextStyle(
    color: Get.theme.primaryColorDark.withOpacity(0.50),
  );
  static TextStyle basicCardDescriptionTextStyle = TextStyle(
    color: Get.theme.appBarTheme.titleTextStyle!.color,
  );
  static TextStyle basicCardTimeTextStyle = TextStyle(
    color: Get.theme.appBarTheme.titleTextStyle!.color,
    fontWeight: Utils.boldFontWeight,
  );
}
