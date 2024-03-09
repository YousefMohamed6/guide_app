import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/Home/widgets/custom_image.dart';
import 'package:guide_app/Features/Home/widgets/rating_view.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
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
        child: Column(
          children: [
            CustomImage(
              imagePath: imagePath,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(title: title),
                    const RatingView(
                      rate: 4.4,
                    ),
                  ],
                ),
                const SizedBox(height: HightManager.h4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddressText(address: address),
                    price == null ? const SizedBox() : PriceText(price: price)
                  ],
                ),
                const SizedBox(height: HightManager.h16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddressText extends StatelessWidget {
  const AddressText({super.key, required this.address});
  final String address;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetsManager.locationOutline),
        const SizedBox(width: WidthManager.w4),
        Text(
          address,
          textAlign: TextAlign.start,
          style: StyleManager.textStyle14.copyWith(
            color: ColorManager.addressColor,
          ),
        ),
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.start,
      style: StyleManager.textStyle16.copyWith(
        color: ColorManager.secandry,
      ),
    );
  }
}

class PriceText extends StatelessWidget {
  const PriceText({super.key, required this.price});
  final String? price;
  @override
  Widget build(BuildContext context) {
    return Text(price! + r"$ /person");
  }
}
