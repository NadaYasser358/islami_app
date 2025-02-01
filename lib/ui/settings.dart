import 'package:flutter/material.dart';
import 'package:islami_app/common/text_styles.dart';
import 'package:islami_app/managers/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTap extends StatefulWidget {
  const SettingsTap({super.key});

  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SwitchListTile.adaptive(
          title: Text(AppLocalizations.of(context)!.darkMode,style: AppTextStyles.suraHadith,),
            value: Provider.of<ThemeManager>(context).isDark,
            onChanged: (value){
              Provider.of<ThemeManager>(context, listen: false).changeThemeMode(value?ThemeMode.dark:ThemeMode.light);
            },
           activeTrackColor: Theme.of(context).colorScheme.outline,
          inactiveTrackColor: Colors.grey,
           activeColor: Colors.white,
          inactiveThumbColor: Colors.black,
          // thumbColor: ,
        ),
        ListTile(
          title: Text(AppLocalizations.of(context)!.language,style: AppTextStyles.suraHadith,),
          trailing: DropdownButton<String>(
            underline: Container(),
            items: [
              DropdownMenuItem(child: Text("English",style: AppTextStyles.suraHadithText,),value: "en",),
              DropdownMenuItem(child: Text("عربي",style: AppTextStyles.suraHadithText,),value: "ar",),
            ],
            value: Provider.of<ThemeManager>(context).appLocale,
            borderRadius: BorderRadius.circular(25),
            dropdownColor: Theme.of(context).colorScheme.outline.withOpacity(0.5),
            onChanged: (value) {
              if(value!=null)
                Provider.of<ThemeManager>(context,listen: false).changeLocale(value);
            },
          ),
        )
      ],
    );
  }
}
