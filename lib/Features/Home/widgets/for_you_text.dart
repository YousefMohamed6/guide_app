import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';

class ForYouText extends StatelessWidget {
  const ForYouText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      
      "For you",
      style: StyleManager.textStyle20.copyWith(
        color: ColorManager.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
