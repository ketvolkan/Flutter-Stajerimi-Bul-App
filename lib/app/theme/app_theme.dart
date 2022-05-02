import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stajyerimibul/core/variables/color.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColorDark: AppColor.cardColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(backgroundColor: AppColor.fabButtonColor),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColor.bottomNavBarItemColor,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    primaryColor: AppColor.primaryColor);
