import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/utils/device/device_utility.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';

class HSearchContainer extends StatelessWidget {
  const HSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal_1,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: HSizes.defaultSpace),
        child: Container(
          width: HDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(HSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? HColors.dark : HColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(HSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: HColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: HColors.darkerGrey),
              const SizedBox(width: HSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodyLarge)
            ],
          ),
        ),
      ),
    );
  }
}