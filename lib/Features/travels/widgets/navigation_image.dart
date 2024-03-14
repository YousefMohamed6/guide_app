import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NavigationImage extends StatelessWidget {
  const NavigationImage({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.20,
      child: PageView.builder(
          itemCount: 4,
          controller: pageController,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SvgPicture.asset(
                  AssetsManager.bigLogo,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: PaddingManager.p32,
                  ),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 4,
                    onDotClicked: (index) => pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                    effect: const WormEffect(
                      dotHeight: ValuesManager.v8,
                      spacing: ValuesManager.v14,
                      dotWidth: ValuesManager.v8,
                      activeDotColor: ColorManager.black,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
