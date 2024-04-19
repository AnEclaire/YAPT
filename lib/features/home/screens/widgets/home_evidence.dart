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
      child: GridView.builder( // List view for scrollable, gridview for grid.
        shrinkWrap: false,
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //childAspectRatio: 90 / 256,
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) {
          return HVerticalImageText(image: HImages.dotsImage, title: 'Dots', onTap: (){},);
        },
      ),
    );
  }
}