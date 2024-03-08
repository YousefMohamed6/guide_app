import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: MarginManager.m8,
        top: MarginManager.m8,
      ),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ValuesManager.borderRadius,
        ),
        color: ColorManager.hartBackgroundColor,
      ),
      child: IconButton(
        icon: const Icon(
          Icons.favorite_border,
          size: ValuesManager.v24,
        ),
        onPressed: () {},
      ),
    );
  }
}
