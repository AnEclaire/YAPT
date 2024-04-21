import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';

class HCircularIcon extends StatelessWidget {

  /// A custom circular Icon widget with a passed in background color.
  ///
  /// Properties: Container [width], [height], & [backgroundColor].
  ///             Icon's [size] & [color]
  const HCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = HSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : HHelperFunctions.isDarkMode(context)
            ? HColors.darkerGrey.withOpacity(0.9)
            : HColors.darkerGrey.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(icon, color: color, size: size),
    );
  }
}
