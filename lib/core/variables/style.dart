import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class AppTextStyle {
  //? AppBar Style
  static TextStyle appBarTextStyle = GoogleFonts.getFont('Josefin Sans').copyWith(
    fontSize: Utils.textSizeVeryHigh,
    fontWeight: Utils.boldFontWeight,
  );
  //? Basic Card Style
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
  //? Profile Page Styles
  static TextStyle profilPageAboutTextStyle =
      AppTextStyle.appBarTextStyle.copyWith(fontSize: Utils.textSizeNormal, color: Get.theme.appBarTheme.titleTextStyle!.color);
  static TextStyle baseCvCardTextStyle =
      AppTextStyle.appBarTextStyle.copyWith(fontSize: Utils.textSizeNormal, color: Get.theme.primaryColorDark);
}
