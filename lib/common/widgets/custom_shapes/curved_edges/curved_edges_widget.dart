import 'package:flutter/material.dart';
import 'package:yapt/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class HCurvedEdgesWidget extends StatelessWidget {
  const HCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HCustomCurvedEdges(),
      child: child,
    );
  }
}