import 'package:flutter/material.dart';
import 'package:guide_app/Features/rewiews/show_reviews/widgets/rating_item.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ShowReviewsBody extends StatelessWidget {
  const ShowReviewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const RatingItem(),
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p8),
    );
  }
}