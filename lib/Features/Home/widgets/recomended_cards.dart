import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/custom_card.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';

class RecomendedCards extends StatelessWidget {
  const RecomendedCards({super.key, required this.controller});
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      controller: controller,
      itemCount: 4,
      shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomCard(
          imagePath: AssetsManager.bigLogo,
          price: "75",
          title: "Spotless Nile View.",
          address: 'Cairo,Egypt',
          onTap: () {},
        );
      },
    );
  }
}
