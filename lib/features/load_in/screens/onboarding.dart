import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/imageStrings.dart';
import 'package:yapt/utils/constants/textStrings.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                      width: HHelperFunctions.screenWidth() * 0.8,
                      height: HHelperFunctions.screenHeight() * 0.6,
                      image: const AssetImage(HImages.onBoardingImage1)
                  ),
                 // Text(HTexts.)
                  const SizedBox(height: HSizes.spaceBtwItems),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}