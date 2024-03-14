import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/rewiews/add_review/add_reviews_view.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';

class WriteReviewTextButton extends StatelessWidget {
  const WriteReviewTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(
              EdgeInsets.all(1),
            ),
          ),
          onPressed: () {
            context.push(AddReviewsView.routePath);
          },
          child: const Text(
            "write a review",
            style: TextStyle(
              color: ColorManager.primary,
            ),
          ),
        ),
        SvgPicture.asset(AssetsManager.pin),
      ],
    );
  }
}
