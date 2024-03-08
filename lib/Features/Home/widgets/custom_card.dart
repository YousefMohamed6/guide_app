import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/Home/widgets/custom_image.dart';
import 'package:guide_app/Features/Home/widgets/rating_view.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.title,
      required this.address,
      required this.width,
      required this.onTap});
  final String title;
  final String address;
  final double width;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            CustomImage(width: width),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(title: title),
                    const SizedBox(height: HightManager.h4),
                    AddressText(address: address),
                  ],
                ),
                const RatingView(
                  rate: 4.4,
                ),
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
        SvgPicture.asset(
          AssetsManager.locationOutline,
        ),
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
