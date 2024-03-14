import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/custom_image.dart';
import 'package:guide_app/Features/Home/widgets/for_you_details.dart';
import 'package:guide_app/Features/Home/widgets/recomended_details.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.address,
    required this.imagePath,
    required this.onTap,
    this.price,
  });
  final String title;
  final String? price;
  final String address;
  final String imagePath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: PaddingManager.p16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImage(imagePath: imagePath),
              const SizedBox(height: HightManager.h8),
              price == null
                  ? ForYouDetials(
                      title: title,
                      address: address,
                    )
                  : RecomendedDetails(
                      title: title,
                      address: address,
                      price: price!,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
