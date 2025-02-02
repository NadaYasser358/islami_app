import 'package:flutter/material.dart';
import 'package:islami_app/common/app_images.dart';
import 'package:islami_app/common/text_styles.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(image: AssetImage(AppImages.radioLogo)),
        Text('اذاعة القران الكريم',style: AppTextStyles.subTitles,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.skip_previous,size: 50,color: Theme.of(context).colorScheme.outline,),
            Icon(Icons.play_arrow,size: 50,color: Theme.of(context).colorScheme.outline,),
            Icon(Icons.skip_next,size: 50,color: Theme.of(context).colorScheme.outline,)
          ],
        ),
        SizedBox(height: 50,)
      ],
    );
  }
}