import 'package:flutter/cupertino.dart';
import 'package:yapt/utils/constants/colors.dart';
import 'package:yapt/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:yapt/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class HPrimaryHeaderContainer extends StatelessWidget {
  const HPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HCurvedEdgesWidget(
      child: SizedBox(
        height: 330,
        child: Container(
          color: HColors.primary,
          child: Stack( // size.isFinite is not true
            children: [
              // Background Custom Shapes
              Positioned(top: 125, right: 100, child: HCircularContainer(backgroundColor: HColors.textWhite.withOpacity(0.1))),
              Positioned(top: 125, right: -50, child: HCircularContainer(backgroundColor: HColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}