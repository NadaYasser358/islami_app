
import 'package:flutter/material.dart';
import 'package:islami_app/common/text_styles.dart';

import '../../../common/app_images.dart';
import '../../../models/sura.dart';

class SuraDetailsScreen extends StatelessWidget {
  SuraDetailsScreen({super.key});

  static const String routeName="suraDetails";
  @override
  Widget build(BuildContext context) {
    Sura sura=ModalRoute.of(context)!.settings.arguments as Sura;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(image:
          Theme.of(context).colorScheme.brightness == Brightness.light
              ? AssetImage(AppImages.lightBg)
              : AssetImage(AppImages.darkBg),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(sura.name),),
        body: Center(
          child: Container(
            width: 354,
            height: 652,
            margin: EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(sura.type,style: AppTextStyles.suraHadith,),
                    Text(sura.verses.length.toString(),style: AppTextStyles.suraHadith),
                  ],
                ),
                Divider(
                  color: Theme.of(context).colorScheme.outline,
                  indent: 10,
                  endIndent: 10,
                  thickness: 3,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      RichText(text: TextSpan(
                        children: sura.verses.map((e) => TextSpan(text: '$e(${sura.verses.indexOf(e)+1}) ')).toList(),
                        style: AppTextStyles.suraHadithText,

                      ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl
                      )
                    ],
                  ),
                    // child: ListView.builder(
                    //     itemCount: sura.verses.length,
                    //     itemBuilder: (context,index)=>Text('${sura.verses[index]}(${index+1})',textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: AppTextStyles.suraHadithText,)
                    // )
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
