import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/Home/controller/home_cubit.dart';
import 'package:guide_app/Features/Home/widgets/category_container.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';

class ToursCategorys extends StatelessWidget {
  const ToursCategorys({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        bool isTours = BlocProvider.of<HomeCubit>(context).isTours;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryContainer(
              color: isTours
                  ? ColorManager.selectedContainer
                  : ColorManager.unSelectedContainer,
              text: "Tours",
              icon: SvgPicture.asset(AssetsManager.tour),
              onTap: () {
                BlocProvider.of<HomeCubit>(context).selectTours();
              },
            ),
            CategoryContainer(
              color: !isTours
                  ? ColorManager.selectedContainer
                  : ColorManager.unSelectedContainer,
              text: "Private tour guide",
              icon: SvgPicture.asset(AssetsManager.tourGuide),
              onTap: () {
                BlocProvider.of<HomeCubit>(context).selectPrivateTours();
              },
            ),
          ],
        );
      },
    );
  }
}
