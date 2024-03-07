import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: HightManager.h8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomContainer(
              color: ColorManager.toursContainer,
              text: "Tours",
              icon: Icons.flag,
            ),
            CustomContainer(
              color: ColorManager.privateToursContainer,
              text: "Private tour guide",
              icon: Icons.person,
            ),
          ],
        ),
        Text(
          "For you",
          style: StyleManager.textStyle20.copyWith(
            color: ColorManager.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });
  final String text;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PaddingManager.p16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          ValuesManager.borderRadius,
        ),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: WidthManager.w8),
          Text(
            text,
            style: StyleManager.textStyle16,
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(AssetsManager.logo),
        ],
      ),
    );
  }
}
