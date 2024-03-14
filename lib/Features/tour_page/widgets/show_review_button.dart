import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/rewiews/show_reviews/show_reviews.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ShowReviewsButton extends StatelessWidget {
  const ShowReviewsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {
            context.push(ShowReviewsView.routePath);
          },
          padding: const EdgeInsets.symmetric(
            vertical: PaddingManager.p16,
          ),
          minWidth: MediaQuery.sizeOf(context).width * 0.75,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: ColorManager.primary),
            borderRadius: BorderRadius.circular(
              ValuesManager.v8,
            ),
          ),
          child: Text(
            "See all +20 Reviews",
            style: StyleManager.textStyle16.copyWith(
              fontFamily: FontFamily.poppins,
              color: ColorManager.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
