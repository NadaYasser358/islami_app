import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/common/app_images.dart';
import 'package:islami_app/common/text_styles.dart';
import 'package:islami_app/managers/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTap extends StatefulWidget {
  SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int count=0;
  int index=0;
  double angle=0;
  List<String> azkar=[
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله',
    'لا حول ولا قوة الا بالله'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                child: Image(
                    image: AssetImage(Provider.of<ThemeManager>(context).isDark
                        ? AppImages.sebhaHeadDark
                        : AppImages.sebhaHeadLight)),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(top: 40),
                child: Transform.rotate(
                  angle: angle,
                  child: Image(
                      image: AssetImage(Provider.of<ThemeManager>(context).isDark
                          ? AppImages.sebhaBodyDark
                          : AppImages.sebhaBodyLight)),
                ),
              )
            ],
          ),
          Text(
            AppLocalizations.of(context)!.sebhaNum,
            style: AppTextStyles.suraHadith,
            textAlign: TextAlign.center,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
              count.toString(),
              style: AppTextStyles.suraHadithText.copyWith(fontSize: 25),
              textAlign: TextAlign.center,
            )),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                  ),
                borderRadius: BorderRadius.circular(25)
              )
            ),
              onPressed: () {
              angle+=0.10;
              if(count<33) {
                count++;
              }
              else{
                angle=0;
                count=0;
                index++;
                if(index==azkar.length)
                  index=0;
              }
              setState(() {

              });
              },
              child: Text(
                azkar[index],
                style: AppTextStyles.subTitles,
              )),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
