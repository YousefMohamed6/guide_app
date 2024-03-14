import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

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
