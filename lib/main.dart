import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/managers/theme_manager.dart';
import 'package:islami_app/ui/home.dart';
import 'package:islami_app/ui/taps/hadith/hadith_details_screen.dart';
import 'package:islami_app/ui/taps/quran/suraDetailsScreen.dart';
import 'package:provider/provider.dart';
import 'common/app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (_)=>ThemeManager()..getTheme()..getLocale(),
      child: MyApp(),
    )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      locale: Locale(Provider.of<ThemeManager>(context).appLocale),
      themeMode: Provider.of<ThemeManager>(context).appThemeMode,
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        SuraDetailsScreen.routeName: (_)=>SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (_)=>HadithDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}


