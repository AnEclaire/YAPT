import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle, //required this.subTitle2,
  });

  final String image, title, subTitle; //, subTitle2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: HHelperFunctions.screenWidth() * 0.8,
              height: HHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)
          ),
          // Text(HTexts.)
          const SizedBox(height: HSizes.spaceBtwItems),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: HSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: HSizes.spaceBtwItems),
          /**Text(
            subTitle2,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          )*/
        ],
      ),
    );
  }
}