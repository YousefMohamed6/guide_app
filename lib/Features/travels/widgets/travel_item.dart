import 'package:flutter/material.dart';
import 'package:guide_app/Features/travels/widgets/navigation_image.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';

class TravelItem extends StatelessWidget {
  const TravelItem({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: NavigationImage()),
        Expanded(
          child: ListTile(
            title: Text(
              "Egypt",
              style: StyleManager.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: FontFamily.sora,
              ),
            ),
            subtitle: const Text(
              "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id es sunt in culpa qui officia deserunt mollit anim id esqui officia deserunt mollit anim id es",
              maxLines: 6,
            ),
          ),
        ),
      ],
    );
  }
}
