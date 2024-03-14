import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guide_app/Features/Home/widgets/custom_appbar.dart';
import 'package:guide_app/Features/Home/widgets/recomended_cards.dart';
import 'package:guide_app/Features/travels/widgets/avliable_travels.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class TravelsBody extends StatelessWidget {
  const TravelsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Column(
      children: [
        const CustomAppBar(
          hintText: "Egypt",
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            controller: scrollController,
            children: [
               const AvilableTravels(),
              const SizedBox(height: HightManager.h16),
              RecomendedCards(controller: scrollController)
            ],
          ),
        ),
      ],
    );
  }
}
