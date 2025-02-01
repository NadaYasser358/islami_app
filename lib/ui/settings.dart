import 'package:flutter/material.dart';
import 'package:islami_app/common/text_styles.dart';
import 'package:islami_app/managers/theme_manager.dart';
import 'package:provider/provider.dart';

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
          title: const Text("Dark Mode",style: AppTextStyles.suraHadith,),
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
          title: Text("Language",style: AppTextStyles.suraHadith,),
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
