import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';

class ReviewImageAndTitle extends StatelessWidget {
  const ReviewImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AssetsManager.logo,
          width: MediaQuery.sizeOf(context).width * 0.35,
        ),
        Expanded(
          child: ListTile(
            subtitle: Text(
              "Cairo Highlights Tour 2 days 1 night tours to Giza, Saqqara pyramids, Egyptian museum & Islamic & Christian Cairo",
              style: StyleManager.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorManager.primary,
              ),
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}