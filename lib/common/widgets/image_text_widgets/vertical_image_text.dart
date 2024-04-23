import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yapt/utils/constants/sizes.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/utils/helpers/helper_functions.dart';
import 'package:yapt/utils/provider_model/ghost_tracker_model.dart';

class HVerticalImageText extends StatefulWidget {
  HVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = HColors.white,
    this.backgroundColor = HColors.white,
  });

  final String image, title;
  final Color textColor;
  Color? backgroundColor;

  @override
  _HVerticalImageTextState createState() => _HVerticalImageTextState();
}

class _HVerticalImageTextState extends State<HVerticalImageText> {
  @override
  Widget build(BuildContext context) {

    final ghostTrackerModel = Provider.of<GhostTrackerModel>(context);

    final dark = HHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          if((widget.backgroundColor != null) && (widget.backgroundColor
              != Colors.red) && (widget.backgroundColor != Colors.green)) {
            widget.backgroundColor = Colors.green;
            updateList(ghostTrackerModel);
          } //else if(widget.backgroundColor == Colors.green) {
            //widget.backgroundColor = Colors.red;
          //}
          else {
            widget.backgroundColor = Colors.white;
            updateList(ghostTrackerModel);
          }
        });
      },
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
                color: widget.backgroundColor ?? (dark ? HColors.primary : HColors.darkerGrey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(widget.image), fit: BoxFit.cover, color: dark ? HColors.black : HColors.black),
              ),
            ),
            // Text
            const SizedBox(height: HSizes.spaceBtwItems / 2),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.labelLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  void updateList(GhostTrackerModel ghostTrackerModel) {
    switch(widget.title) {
      case "Writing":
        ghostTrackerModel.toggleWriting();
        break;
      case "Spirit Box":
        ghostTrackerModel.toggleSpiritbox();
        break;
      case "Dots":
        ghostTrackerModel.toggleDots();
        break;
      case "E.M.F. 5":
        ghostTrackerModel.toggleEmf();
        break;
      case "Freezing":
        ghostTrackerModel.toggleFreezing();
        break;
      case "UV":
        ghostTrackerModel.toggleUV();
        break;
      case "Orbs":
        ghostTrackerModel.toggleOrbs();
        break;
      default:
        break;
    }
    ghostTrackerModel.updateList();
  }
}
