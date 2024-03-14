import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: PaddingManager.p8),
      child: Row(
        children: [
          const Icon(Icons.arrow_right_rounded),
          Expanded(
            child: Text(
              text,
              softWrap: true,
              overflow: TextOverflow.fade,
              style: StyleManager.textStyle16.copyWith(
                color: ColorManager.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}