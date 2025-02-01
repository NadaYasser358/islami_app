import 'package:flutter/material.dart';


class ThemeManager with ChangeNotifier{
   changeThemeMode(ThemeMode themeMode){
    appThemeMode=themeMode;
    notifyListeners();
  }
   changeLocale(String locale){
     appLocale=locale;
     notifyListeners();
   }
  bool get isDark=>appThemeMode==ThemeMode.dark;
   ThemeMode appThemeMode=ThemeMode.dark;
   String appLocale='en';

}