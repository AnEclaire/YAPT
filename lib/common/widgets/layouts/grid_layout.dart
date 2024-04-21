import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/common/widgets/ghosts/ghost_cards/ghost_card_vertical.dart';

class HGridLayout extends StatelessWidget {
  const HGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 105,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      // So it doesn't take all the space available
      physics: const NeverScrollableScrollPhysics(),
      // Children don't scroll
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Horizontal
        mainAxisSpacing: HSizes.gridViewSpacing, // Vertical
        crossAxisSpacing: HSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent, // How large a child of grid can be
      ),
      itemBuilder: itemBuilder,
    );
  }
}
