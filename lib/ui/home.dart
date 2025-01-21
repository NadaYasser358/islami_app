import 'package:flutter/material.dart';
import 'package:islami_app/common/app_images.dart';
import 'package:islami_app/ui/settings.dart';
import 'package:islami_app/ui/taps/hadith/hadith.dart';
import 'package:islami_app/ui/taps/quran/quran.dart';
import 'package:islami_app/ui/taps/radio/radio.dart';
import 'package:islami_app/ui/taps/sebha/sebha.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;

  List<Widget> taps=[
    QuranTap(),
    HadithTap(),
    SebhaTap(),
    RadioTap(),
    SettingsTap()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.lightBg),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value){
            index=value;
            setState(() {
            });
          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppImages.quranIcon),size: 40,),label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppImages.hadithIcon),size: 40,),label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppImages.sebhaIcon),size: 40,),label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppImages.radioIcon),size: 40,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: 40,),label: '')
          ],
        ),
      ),
    );
  }
}
