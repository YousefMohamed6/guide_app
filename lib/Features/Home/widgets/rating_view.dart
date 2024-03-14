import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key, required this.rate});
  final double rate;
  @override
  Widget build(BuildContext context) {
    double iconSize = 20;
    return Row(
      children: [
        Icon(
          Icons.star,
          color: rate >= 1 ? Colors.amber : null,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rate >= 2 ? Colors.amber : null,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rate >= 3 ? Colors.amber : null,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rate >= 4 ? Colors.amber : null,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rate == 5 ? Colors.amber : null,
          size: iconSize,
        ),
        const SizedBox(width: WidthManager.w8),
        Text("$rate"),
        const SizedBox(width: WidthManager.w8),
      ],
    );
  }
}
