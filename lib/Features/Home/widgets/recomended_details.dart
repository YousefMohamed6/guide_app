import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/address_text.dart';
import 'package:guide_app/Features/Home/widgets/price_text.dart';
import 'package:guide_app/Features/Home/widgets/rating_view.dart';
import 'package:guide_app/Features/Home/widgets/title_text.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class RecomendedDetails extends StatelessWidget {
  const RecomendedDetails(
      {super.key,
      required this.title,
      required this.address,
      required this.price});
  final String title;
  final String address;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingManager.p16,
      ),
      child: Column(
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
              PriceText(price: price),
            ],
          ),
          const SizedBox(height: HightManager.h16),
        ],
      ),
    );
  }
}
