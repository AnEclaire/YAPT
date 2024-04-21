import 'package:flutter/material.dart';
import 'package:yapt/common/widgets/ghosts/ghost_cards/ghost_card_vertical.dart';

class HGhostStats extends StatelessWidget {
  const HGhostStats({
    super.key,
    required this.name,
    required this.ghostCard,
    required this.lineThrough,
  });

  final String name;
  final Widget ghostCard;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
