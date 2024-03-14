import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SelectRatingBar extends StatelessWidget {
  const SelectRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 0,
      itemSize: ValuesManager.v32,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        debugPrint(rating.toString());
      },
    );
  }
}
