import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CustomArrowIcon extends StatelessWidget {
  const CustomArrowIcon({super.key, required this.isHiden});
  final bool isHiden;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            ValuesManager.borderRadius,
          ),
        ),
        color: ColorManager.primary,
      ),
      child: isHiden
          ? const Icon(
              Icons.keyboard_arrow_up_sharp,
              color: ColorManager.white,
              size: ValuesManager.v24,
            )
          : const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: ColorManager.white,
              size: ValuesManager.v24,
            ),
    );
  }
}
