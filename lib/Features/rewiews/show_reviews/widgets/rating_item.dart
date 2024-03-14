import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/rewiews/show_reviews/widgets/review_rating.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.white,
      margin: const EdgeInsets.all(MarginManager.m4),
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.p8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  backgroundColor: ColorManager.primary,
                ),
                const SizedBox(width: WidthManager.w16),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "June Quigley",
                      style: StyleManager.textStyle16,
                    ),
                    const SizedBox(height: HightManager.h4),
                    Text(
                      "Wed Aug 16 2023",
                      style: StyleManager.textStyle12.copyWith(
                        color: ColorManager.textScondray,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: HightManager.h8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ReviewRating(rate: 5),
                Row(
                  children: [
                    SvgPicture.asset(
                      AssetsManager.logo,
                      width: 56,
                    ),
                    const SizedBox(width: WidthManager.w4),
                    SvgPicture.asset(
                      AssetsManager.logo,
                      width: 56,
                    ),
                    const SizedBox(width: WidthManager.w4),
                    SvgPicture.asset(
                      AssetsManager.logo,
                      width: 56,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: HightManager.h8),
            const Text(
              "Quod et ea iusto eveniet voluptatem blanditiis. Natus libero aut.",
              style: StyleManager.textStyle16,
            )
          ],
        ),
      ),
    );
  }
}
