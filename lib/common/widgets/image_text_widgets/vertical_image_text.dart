import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';

class HVerticalImageText extends StatelessWidget {
  const HVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = HColors.white,
    this.backgroundColor = HColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: HSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(HSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? HColors.black : HColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? HColors.dark : HColors.dark),
              ),
            ),
            // Text
            const SizedBox(height: HSizes.spaceBtwItems / 2),
            Text(
              title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}