import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/custom_card.dart';

class RecomendedCards extends StatelessWidget {
  const RecomendedCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.35,
        child: PageView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomCard(
              title: "Spotless Nile View.",
              address: 'Cairo,Egypt',
              width: double.infinity,
              onTap: () {},
            );
          },
        ));
  }
}
