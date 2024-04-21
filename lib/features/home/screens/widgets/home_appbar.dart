import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/common/widgets/appbar/appbar.dart';
import 'package:yapt/utils/constants/text_strings.dart';

class HHomeAppBar extends StatelessWidget {
  const HHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(HTexts.homeAppBarTitle, style: Theme.of(context).textTheme.headlineMedium),
          //Text(HTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: HColors.white)),
        ],
      ),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Iconsax.refresh_circle4))],
    );
  }
}