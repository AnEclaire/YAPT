import 'package:flutter/material.dart';
import 'package:yapt/utils/constants/enums.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/constants/text_strings.dart';
import 'package:yapt/common/widgets/layouts/grid_layout.dart';
import 'package:yapt/common/widgets/texts/section_heading.dart';
import 'package:yapt/features/home/screens/widgets/home_appbar.dart';
import 'package:yapt/features/home/screens/widgets/home_evidence.dart';
import 'package:yapt/common/widgets/ghosts/ghost_cards/ghost_card_vertical.dart';
import 'package:yapt/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:yapt/common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const HPrimaryHeaderContainer(
            child: Column(
              children: [
                // Appbar
                HHomeAppBar(),
                SizedBox(height: HSizes.xs),
                //Searchbar
                HSearchContainer(text: 'Search ghosts...'),
                SizedBox(height: HSizes.spaceBtwItems),
                // Evidence Scrollable Section
                Padding(
                  padding: EdgeInsets.only(left: HSizes.defaultSpace),
                  child: Column(
                    children: [
                      // Heading
                      HSectionHeading(
                          title: HTexts.homeAppBarSubTitle,
                          showActionButton: false),
                      SizedBox(height: HSizes.sm),

                      // Evidence
                      HHomeEvidence(),
                    ],
                  ),
                )
              ],
            ),
          ),

        // Body
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: HSizes.spaceBtwItems),
            child: Column(
              children: [
                // Ghosts
                HGridLayout(itemCount: 24, itemBuilder: (_, index) => const HGhostCardVertical(ghost: Ghost.Phantom)),
                // May need a widget that can return an HGridLayout that changes itemCount and itemBuilder per evidence.
              ],
            ),
          ),
        ]),
      )
    );
  }
}