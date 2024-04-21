import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/colors.dart';

class HShadowStyle {

  static final verticalShadow = BoxShadow(
    color: HColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 4,
    offset: const Offset(0, 1),
  );

  static final horizontalShadow = BoxShadow(
    color: HColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}