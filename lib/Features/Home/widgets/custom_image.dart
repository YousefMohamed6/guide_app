import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/favourite/favorite_icon.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Center(
          child: SvgPicture.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: FavoriteIcon(),
        ),
      ],
    );
  }
}
