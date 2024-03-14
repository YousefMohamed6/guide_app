import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SubmitReviewButton extends StatelessWidget {
  const SubmitReviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingManager.p32,
      ),
      child: MaterialButton(
        minWidth: MediaQuery.sizeOf(context).width * 0.75,
        color: ColorManager.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ValuesManager.v8)),
        onPressed: () {
          context.pop();
        },
        child: Text(
          "Submit Review",
          style: StyleManager.textStyle16.copyWith(
            fontFamily: FontFamily.poppins,
            color: ColorManager.white,
          ),
        ),
      ),
    );
  }
}
