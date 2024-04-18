import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/colors.dart';

class HCircularContainer extends StatelessWidget {
  const HCircularContainer({ // default assignments
    super.key, this.width = 400, this.height = 400, this.radius = 400, this.padding = 0, this.child, this.backgroundColor = HColors.white,
  });

  final double? width; // ? means its nullable and is not necessary to be provided
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}