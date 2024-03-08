import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/for_you_cards.dart';
import 'package:guide_app/Features/Home/widgets/for_you_text.dart';
import 'package:guide_app/Features/Home/widgets/recomended_cards.dart';
import 'package:guide_app/Features/Home/widgets/tours_categorys.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p8),
      children: const [
        SizedBox(height: HightManager.h8),
        ToursCategorys(),
        ForYouText(),
        ForYouCards(),
        SizedBox(height: HightManager.h16),
        RecomendedCards(),
      ],
    );
  }
}
