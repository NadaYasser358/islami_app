import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/hadith.dart';
import 'package:islami_app/ui/taps/hadith/hadith_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../common/app_images.dart';
import '../../../common/text_styles.dart';


class HadithTap extends StatefulWidget {
  HadithTap({super.key});

  @override
  State<HadithTap> createState() => _HadithTapState();
}

class _HadithTapState extends State<HadithTap> {
  List<Hadith> ahadith=[];

  @override
  Widget build(BuildContext context) {

    if (ahadith.isEmpty) getAhadithList();
    if (ahadith.isEmpty) return Center(child: CircularProgressIndicator(),);
    return Column(
      children: [
        Image.asset(AppImages.hadithLogo),
        Divider(
          thickness: 3,
          color: Theme.of(context).colorScheme.outline,
        ),
        Text(AppLocalizations.of(context)!.hadithNum,style: AppTextStyles.subTitles,textAlign: TextAlign.center),
        Divider(
          thickness: 3,
          color: Theme.of(context).colorScheme.outline,
        ),
        Expanded(child: ListView.builder(
          itemCount: ahadith.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(HadithDetailsScreen.routeName,arguments: ahadith[index]);
              },
              child: Column(
                children: [
                  Text(ahadith[index].name,style: AppTextStyles.suraHadith,),
                  Divider(
                    thickness: 3,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ],
              ),
            );
          },
          )
        )
      ],
    );
  }

   getAhadithList()async{
    String data=await rootBundle.loadString('assets/hadith/ahadeth.txt');
    List<String> ahadithList=data.trim().split('#');
    ahadithList.removeWhere((element) => element.trim().isEmpty);
    for(int i=0;i<ahadithList.length;i++)
      {
        int index=ahadithList[i].trim().indexOf('\n');
        String name=ahadithList[i].trim().substring(0,index);
        String content=ahadithList[i].trim().substring(index);
        Hadith hadith=Hadith(name: name, text: content);
        ahadith.add(hadith);
      }
    setState(() {
    });
  }
}