import 'package:flutter/material.dart';
import 'package:islami_app/common/app_images.dart';
import 'package:islami_app/common/text_styles.dart';
import 'package:islami_app/ui/taps/quran/quraanWedgit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../models/sura.dart';

class QuranTap extends StatelessWidget {
  QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [Column(
          children: [
            Image.asset(AppImages.quranLogo),
            Divider(
              thickness: 3,
              color: Theme.of(context).colorScheme.outline,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(AppLocalizations.of(context)!.suraName,style: AppTextStyles.subTitles,textAlign: TextAlign.center,)),
                Expanded(child: Text(AppLocalizations.of(context)!.suraType,style: AppTextStyles.subTitles,textAlign: TextAlign.center)),
              ],
            ),
            Divider(
              thickness: 3,
              color: Theme.of(context).colorScheme.outline,
            ),
            Expanded(child: ListView.separated(
              itemCount: 114,
              itemBuilder: (context,index){
                return QuranWidget(sura: Sura(index: index),);
                },
              separatorBuilder: (BuildContext context, int index) {
                return  Divider(
                  thickness: 3,
                  color: Theme.of(context).colorScheme.outline,
                );
              },)
            )
          ],
        ),
          VerticalDivider(
            thickness: 3,
            //width: 2,
            color: Theme.of(context).colorScheme.outline,
            endIndent: 0,
            indent: 233,
          ),
        ],
      ),
    );
  }

}
