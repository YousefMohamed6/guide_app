import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/Home/widgets/category_container.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';

class ToursCategorys extends StatelessWidget {
  const ToursCategorys({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CategoryContainer(
          color: ColorManager.toursContainer,
          text: "Tours",
          icon: SvgPicture.asset(AssetsManager.tour),
        ),
        CategoryContainer(
          color: ColorManager.privateToursContainer,
          text: "Private tour guide",
          icon: SvgPicture.asset(AssetsManager.tourGuide),
        ),
      ],
    );
  }
}
