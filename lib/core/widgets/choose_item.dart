import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ChooseItem extends StatelessWidget {
  const ChooseItem(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onChanged});
  final String text;
  final bool isSelected;
  final void Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: isSelected,
          onChanged: onChanged,
          activeColor: ColorManager.black,
        ),
        const SizedBox(width: WidthManager.w16),
        Text(
          
          text,
          style: StyleManager.textStyle16.copyWith(
            fontFamily: FontFamily.sora,
          ),
        ),
        const SizedBox(width: WidthManager.w16),
      ],
    );
  }
}
