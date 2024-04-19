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
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return HVerticalImageText(image: HImages.dotsImage, title: 'Dots', onTap: (){},);
        },
      ),
    );
  }
}