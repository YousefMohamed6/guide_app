import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/favorite_icon.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(
        horizontal: MarginManager.m16,
        vertical: MarginManager.m16,
      ),
      decoration: const BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(
            ValuesManager.v20,
          ),
        ),
      ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: FavoriteIcon(),
          ),
          Image.asset(
            AssetsManager.logo,
          ),
          const SizedBox(height: HightManager.h56)
        ],
      ),
    );
  }
}
