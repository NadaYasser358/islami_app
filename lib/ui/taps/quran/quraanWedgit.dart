
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/models/sura.dart';
import 'package:islami_app/ui/taps/quran/suraDetailsScreen.dart';

import '../../../common/text_styles.dart';

class QuranWidget extends StatelessWidget {
  QuranWidget({super.key,required this.sura});
  final Sura sura;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(0),
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(sura.name,style: AppTextStyles.suraHadith,textAlign: TextAlign.center,)),
            Expanded(child: Text(sura.type,style: AppTextStyles.suraHadith,textAlign: TextAlign.center)),
          ],
        ),
      ),
      onTap: ()async{
        await sura.getSuraVerses();
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,arguments: sura);
      },
    );
  }
}
