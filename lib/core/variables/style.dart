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
  static TextStyle appBarCustomTextButtonTextStyle = GoogleFonts.getFont('Josefin Sans').copyWith(
    fontSize: Utils.textSizeNormal,
    fontWeight: Utils.boldFontWeight,
    color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white,
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
    color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white,
  );
  static TextStyle basicCardTimeTextStyle = TextStyle(
    color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white,
    fontWeight: Utils.boldFontWeight,
  );
  //? Profile Page Style
  static TextStyle profilPageAboutTextStyle = AppTextStyle.appBarTextStyle
      .copyWith(fontSize: Utils.textSizeNormal, color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white);
  static TextStyle baseCvCardTextStyle =
      AppTextStyle.appBarTextStyle.copyWith(fontSize: Utils.textSizeNormal, color: Get.theme.primaryColorDark);
  static TextStyle profilPageDateTimeTextStyle = AppTextStyle.profilPageAboutTextStyle.copyWith(
    fontSize: Utils.textSizeSubtitle,
    color: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
  );
  static TextStyle profilPageCountryTextStyle = AppTextStyle.profilPageAboutTextStyle.copyWith(
    fontSize: Utils.textSizeSubtitle,
    color: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
  );
  static TextStyle profilePageBioTextStyle = AppTextStyle.profilPageAboutTextStyle.copyWith(
    fontSize: Utils.textSizeTitle,
    color: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
  );
  //? Drawer Style
  static TextStyle drawerTitleTextStyle =
      AppTextStyle.appBarTextStyle.copyWith(color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white);
  //? Toggle Button Style
  static TextStyle togglebuttonTextStyle = TextStyle(color: Get.theme.primaryColor, fontWeight: Utils.boldFontWeight);
}
