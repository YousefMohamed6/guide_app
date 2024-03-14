import 'package:flutter/widgets.dart';
import 'package:guide_app/Features/tour_page/widgets/write_review_text.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';

class ReviewsText extends StatelessWidget {
  const ReviewsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Reviews",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const WriteReviewTextButton(),
      ],
    );
  }
}
