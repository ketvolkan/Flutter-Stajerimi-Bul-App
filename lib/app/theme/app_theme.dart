import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/variables/color.dart';
import '../../core/variables/style.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      iconTheme: const IconThemeData().copyWith(color: AppColor.iconColor),
      primaryColorDark: AppColor.cardColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(backgroundColor: AppColor.fabButtonColor),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        titleTextStyle: AppTextStyle.appBarTextStyle.copyWith(color: AppColor.bottomNavBarItemColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      colorScheme: ColorScheme.light(
        primary: AppColor.primaryColor, // header background color
        onPrimary: AppColor.iconColor, // header text color
        onSurface: AppColor.cardColor, // body text color
      ),
      backgroundColor: AppColor.backgroundColor,
      primaryColor: AppColor.primaryColor);

//TODO Dark Tema Tasarlanıcak
  static ThemeData darkTheme = ThemeData.light().copyWith(
      iconTheme: const IconThemeData().copyWith(color: AppColor.iconColorDark),
      primaryColorDark: AppColor.cardColorDark,
      floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
        backgroundColor: AppColor.fabButtonColorDark,
      ),
      colorScheme: ColorScheme.light(
        primary: AppColor.primaryColorDark, // header background color
        onPrimary: AppColor.iconColorDark, // header text color
        onSurface: AppColor.cardColorDark, // body text color
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        titleTextStyle: AppTextStyle.appBarTextStyle.copyWith(color: AppColor.bottomNavBarItemColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      cardTheme: const CardTheme().copyWith(color: AppColor.cardBackgroundColorDark),
      backgroundColor: AppColor.backgroundColorDark,
      primaryColor: AppColor.primaryColorDark);
}
