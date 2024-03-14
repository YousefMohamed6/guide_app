import 'package:flutter/material.dart';
import 'package:guide_app/Features/travels/widgets/travel_item.dart';

class AvilableTravels extends StatelessWidget {
  const AvilableTravels({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.20,
      child: PageView.builder(
        itemCount: 4,
        controller: pageController,
        itemBuilder: (context, index) {
          return TravelItem(
            pageController: pageController,
          );
        },
      ),
    );
  }
}