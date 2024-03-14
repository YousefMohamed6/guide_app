import 'package:flutter/material.dart';
import 'package:guide_app/Features/rewiews/show_reviews/widgets/rating_item.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class PartOfReviews extends StatelessWidget {
  const PartOfReviews({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) => const RatingItem(),
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p8),
    );
  }
}
