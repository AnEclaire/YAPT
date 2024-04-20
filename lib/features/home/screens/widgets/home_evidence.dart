import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/imageStrings.dart';
import 'package:yapt/common/widgets/image_text_widgets/vertical_image_text.dart';

class HHomeEvidence extends StatelessWidget {
  const HHomeEvidence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          HVerticalImageText(image: HImages.emfImage, title: 'E.M.F. 5', onTap: (){},),
          HVerticalImageText(image: HImages.dotsImage, title: 'Dots', onTap: (){},),
          HVerticalImageText(image: HImages.uvImage, title: 'UV', onTap: (){},),
          HVerticalImageText(image: HImages.ghostOrbsImage, title: 'Orbs', onTap: (){},),
          HVerticalImageText(image: HImages.ghostWritingImage, title: 'Writing', onTap: (){},),
          HVerticalImageText(image: HImages.spiritBoxImage, title: 'Spirit Box', onTap: (){},),
          HVerticalImageText(image: HImages.freezingImage2, title: 'Freezing', onTap: (){},),
        ],
      )
    );
  }
}