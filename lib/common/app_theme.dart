import 'package:flutter/material.dart';
import 'package:islami_app/common/app_colors.dart';

class AppTheme{
  static ThemeData light=ThemeData(
    canvasColor: AppColors.mainLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: AppColors.black
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mainLightColor,
      selectedItemColor: AppColors.black,
      unselectedItemColor: Colors.white,
     // selectedIconTheme: IconThemeData(size: 40)
    ),
  );


  static ThemeData dark=ThemeData(
    canvasColor: AppColors.mainDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Colors.white
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mainDarkColor,
      selectedItemColor: AppColors.brightGold,
      unselectedItemColor: Colors.white,
        //selectedIconTheme: IconThemeData(size: 40)
    ),

  );

}