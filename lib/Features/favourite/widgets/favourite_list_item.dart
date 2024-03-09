import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class FavouriteListItem extends StatelessWidget {
  const FavouriteListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: PaddingManager.p8,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsManager.listIcon,
          ),
          const SizedBox(width: WidthManager.w8),
          Text(
            "List Name",
            style: StyleManager.textStyle18.copyWith(
              fontFamily: FontFamily.poppins,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AssetsManager.addList,
            ),
          ),
          const SizedBox(width: WidthManager.w8),
        ],
      ),
    );
  }
}
