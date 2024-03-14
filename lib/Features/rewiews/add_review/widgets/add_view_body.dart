import 'package:flutter/material.dart';
import 'package:guide_app/Features/rewiews/add_review/widgets/add_picture_to_review.dart';
import 'package:guide_app/Features/rewiews/add_review/widgets/add_review_text_field.dart';
import 'package:guide_app/Features/rewiews/add_review/widgets/review_image_and_titlr.dart';
import 'package:guide_app/Features/rewiews/add_review/widgets/select_rating_bar.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class AddReviewsBody extends StatelessWidget {
  const AddReviewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingManager.p8,
      ),
      children: [
        const SizedBox(height: HightManager.h8),
        const ReviewImageAndTitle(),
        const SizedBox(height: HightManager.h16),
        Text(
          "Score :",
          style: StyleManager.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: FontFamily.poppins,
          ),
        ),
        const SizedBox(height: HightManager.h16),
        const SelectRatingBar(),
        const SizedBox(height: HightManager.h16),
        Text(
          "Add Photo or video",
          style: StyleManager.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: FontFamily.poppins,
          ),
        ),
        const SizedBox(height: HightManager.h16),
        const AddPictureToReview(),
        const SizedBox(height: HightManager.h16),
        Text(
          "Write A Review",
          style: StyleManager.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: FontFamily.poppins,
          ),
        ),
        const SizedBox(height: HightManager.h16),
        const AddReviewFormField(),
        const SizedBox(height: HightManager.h16),
      ],
    );
  }
}
