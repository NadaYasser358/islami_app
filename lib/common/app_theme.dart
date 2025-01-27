import 'package:flutter/material.dart';
import 'package:islami_app/common/app_colors.dart';
import 'package:islami_app/common/text_styles.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    canvasColor: AppColors.mainLightColor,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.black,
        onPrimary: Colors.black,
        secondary: Colors.black,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.red,
        outline: Color(0xFFB7935F),
        background: Colors.transparent,
        onBackground: Colors.transparent,
        surface: Color(0xFFB7935F),
        onSurface: Colors.black),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        titleTextStyle: AppTextStyles.titles,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mainLightColor,
      selectedItemColor: AppColors.black,
      unselectedItemColor: Colors.white,
      // selectedIconTheme: IconThemeData(size: 40)
    ),
  );

  static ThemeData dark = ThemeData(
    canvasColor: AppColors.mainDarkColor,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFFACC1D),
        onPrimary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
        outline: Color(0xFFFACC1D),
        error: Colors.red,
        onError: Colors.red,
        background: Colors.transparent,
        onBackground: Colors.transparent,
        surface: Color(0xFF141A2E),
        onSurface: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mainDarkColor,
      selectedItemColor: AppColors.brightGold,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 40)
    ),
  );
}

