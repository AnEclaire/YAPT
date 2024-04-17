import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/device/device_utility.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';

class StartHuntin extends StatelessWidget {
  const StartHuntin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: HDeviceUtils.getAppBarHeight(),
        right: HSizes.buttonWidth,
        left: HSizes.buttonWidth,
        child: TextButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(backgroundColor: dark ? HColors.primary : Colors.black),
          child: const Text("Start Huntin'"),
        )
    );
  }
}