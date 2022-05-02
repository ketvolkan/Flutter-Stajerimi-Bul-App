import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stajyerimibul/core/variables/color.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
    iconTheme: const IconThemeData().copyWith(
      color: AppColor.iconColor,
    ),
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
    backgroundColor: AppColor.backgroundColor,
    primaryColor: AppColor.primaryColor);

//TODO Dark Tema Tasarlanıcak
final ThemeData darkTheme = ThemeData.dark().copyWith(
    iconTheme: const IconThemeData().copyWith(
      color: AppColor.iconColorDark,
    ),
    primaryColorDark: AppColor.cardColorDark,
    floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
      backgroundColor: AppColor.fabButtonColorDark,
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColor.bottomNavBarItemColor,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    cardTheme: const CardTheme().copyWith(color: AppColor.cardBackgroundColorDark),
    backgroundColor: AppColor.backgroundColorDark,
    primaryColor: AppColor.primaryColorDark);
