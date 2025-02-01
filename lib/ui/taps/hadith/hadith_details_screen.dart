import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/models/hadith.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../common/app_images.dart';
import '../../../common/text_styles.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});
  static const String routeName="hadithDetails";

  @override
  Widget build(BuildContext context) {
    Hadith hadith=ModalRoute.of(context)!.settings.arguments as Hadith;
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
          appBar: AppBar(title: Text(AppLocalizations.of(context)!.hadithData),),
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
                Text(hadith.name,style: AppTextStyles.suraHadith,),
                  Divider(
                    color: Theme.of(context).colorScheme.outline,
                    indent: 10,
                    endIndent: 10,
                    thickness: 3,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        child: Text(hadith.text,style: AppTextStyles.suraHadithText,textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
