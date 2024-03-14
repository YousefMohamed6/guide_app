import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';

class DescribtionText extends StatelessWidget {
  const DescribtionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Cairo Highlights Tour 2 days 1 night tours to Giza, Saqqara pyramids, Egyptian museum & Islamic & Christian Cairo",
      style: StyleManager.textStyle16.copyWith(
        fontWeight: FontWeight.bold,
        color: ColorManager.secandry,
      ),
    );
  }
}
