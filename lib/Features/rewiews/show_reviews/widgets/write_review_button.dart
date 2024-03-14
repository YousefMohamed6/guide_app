import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/rewiews/add_review/add_reviews_view.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class WriteReviewButton extends StatelessWidget {
  const WriteReviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        bottom: PaddingManager.p8,
      ),
      child: MaterialButton(
        onPressed: () {
          context.push(AddReviewsView.routePath);
        },
        padding: const EdgeInsets.symmetric(
          vertical: PaddingManager.p16,
        ),
        minWidth: MediaQuery.sizeOf(context).width * 0.75,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            ValuesManager.v8,
          ),
          side: const BorderSide(
            color: ColorManager.black,
          ),
        ),
        child: Text(
          "Write A Review",
          style: StyleManager.textStyle16.copyWith(
            fontFamily: FontFamily.poppins,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
