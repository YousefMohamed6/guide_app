import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/favourite/favorite_icon.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          imagePath,
        ),
        const Positioned(
          top: ValuesManager.v16,
          right: ValuesManager.v16,
          child: FavoriteIcon(),
        ),
      ],
    );
  }
}
