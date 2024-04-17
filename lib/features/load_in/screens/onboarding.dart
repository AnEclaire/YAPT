import 'package:flutter/material.dart';
import 'package:yapt/features/load_in/screens/widgets/onboarding_page.dart';
import 'package:yapt/features/load_in/screens/widgets/starthuntin.dart';
import 'package:yapt/utils/constants/imageStrings.dart';
import 'package:yapt/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnBoardingPage(image: HImages.onBoardingImage1,
                  title: HTexts.onBoardingTitle1,
                  subTitle: HTexts.onBoardingSubTitle1,
                  subTitle2: HTexts.onBoardingSubTitle2
              )
            ],
          ),

          const StartHuntin(),
        ],
      )
    );
  }
}