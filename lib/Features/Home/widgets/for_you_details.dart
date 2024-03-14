import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/address_text.dart';
import 'package:guide_app/Features/Home/widgets/rating_view.dart';
import 'package:guide_app/Features/Home/widgets/title_text.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ForYouDetials extends StatelessWidget {
  const ForYouDetials(
      {super.key, required this.title, required this.address, this.price});
  final String title;
  final String address;
  final String? price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: PaddingManager.p16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
    );
  }
}
