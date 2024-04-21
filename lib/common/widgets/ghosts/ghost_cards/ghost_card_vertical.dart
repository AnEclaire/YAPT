import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/common/widgets/styles/shadows.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';
import 'package:yapt/common/widgets/icons/h_circular_icon.dart';
import 'package:yapt/common/widgets/custom_shapes/containers/rounded_container.dart';

class HGhostCardVertical extends StatelessWidget {
  const HGhostCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);

    return Container(
      width: 140,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [HShadowStyle.verticalShadow],
        borderRadius: BorderRadius.circular(HSizes.ghostImageRadius),
        color: dark ? HColors.darkerGrey : HColors.white,
      ),
      child: Column(
        children: [
          HRoundedContainer(
            height: 100,
            width: 140,
            padding: const EdgeInsets.all(HSizes.sm),
            backgroundColor: HColors.dark,
            child: Stack(
              children: [
                // Ghost_Name
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: HRoundedContainer(
                      radius: HSizes.sm,
                      backgroundColor: HColors.primary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: HSizes.sm, vertical: HSizes.xs),
                      child: const Text(
                        'Ghost_Name',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),

                // Evidence_Icons
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HCircularIcon(icon: Ionicons.hand_right, color: Colors.grey, width: 36, height: 36),
                        HCircularIcon(icon: Ionicons.apps, color: Colors.grey, width: 36, height: 36),
                        HCircularIcon(icon: Ionicons.flash, color: Colors.grey, width: 36, height: 36),

                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
