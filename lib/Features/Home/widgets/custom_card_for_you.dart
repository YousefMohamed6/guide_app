import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/Home/widgets/custom_image.dart';
import 'package:guide_app/Features/Home/widgets/rating_view.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CustomCardForYou extends StatelessWidget {
  const CustomCardForYou({
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
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Color.fromARGB(200, 225, 222, 222)),
        child: Card(
          elevation: 0,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: CustomImage(
                  imagePath: imagePath,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 12, right: 12, top: 12, bottom: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitleText(title: title),
                        SizedBox(
                          width: 90,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: const RatingView(
                      rate: 4.4,
                    ),
                  ),
           
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
