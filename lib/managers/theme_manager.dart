import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager with ChangeNotifier{
   changeThemeMode(ThemeMode themeMode){
    appThemeMode=themeMode;
    saveTheme(themeMode);
    notifyListeners();
  }
   changeLocale(String locale){
     appLocale=locale;
     saveLocale(locale);
     notifyListeners();
   }
  bool get isDark=>appThemeMode==ThemeMode.dark;
   ThemeMode appThemeMode=ThemeMode.light;
   String appLocale='ar';
   void saveTheme(ThemeMode themeMode)async
   {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if(themeMode==ThemeMode.light)
        {
          prefs.setString('theme', 'light');
        }
      else
        {
          prefs.setString('theme', 'dark');
        }
   }

    getTheme()async
   {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     String theme=prefs.getString('theme')??'light';
     if(theme=='light')
     {
       appThemeMode=ThemeMode.light;
     }
     else
     {
       appThemeMode=ThemeMode.dark;
     }
     notifyListeners();
   }

   void saveLocale(String locale)async
   {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     if(locale=='en')
     {
       prefs.setString('locale', 'en');
     }
     else
     {
       prefs.setString('locale', 'ar');
     }
   }

   getLocale()async
   {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     String locale=prefs.getString('locale')??'ar';
     if(locale=='ar')
     {
       appLocale='ar';
     }
     else
     {
       appLocale='en';
     }
     notifyListeners();
   }
}