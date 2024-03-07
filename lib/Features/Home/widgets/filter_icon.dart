import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      child: const Icon(
        Icons.tune,
        size: ValuesManager.filterIconSize,
        color: ColorManager.white,
      ),
      onPressed: () {},
    );
  }
}