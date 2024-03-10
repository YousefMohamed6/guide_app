import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guide_app/Features/Home/widgets/for_you_cards.dart';
import 'package:guide_app/Features/Home/widgets/for_you_text.dart';
import 'package:guide_app/Features/Home/widgets/recomended_cards.dart';
import 'package:guide_app/Features/Home/widgets/search_appbar.dart';
import 'package:guide_app/Features/Home/widgets/tours_categorys.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(children: [   SearchFiltering(),    Padding(
            padding: const EdgeInsets.only(top: 140.0),
            child: ToursCategorys(),
          ),],),
        
          const SizedBox(height: HightManager.h4),
       
          const ForYouText(),
          const ForYouCards(),
          const SizedBox(height: HightManager.h16),
          RecomendedCards(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
