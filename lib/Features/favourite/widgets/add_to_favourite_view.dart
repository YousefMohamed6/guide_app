import 'package:flutter/material.dart';
import 'package:guide_app/Features/favourite/widgets/favourite_list_item.dart';
import 'package:guide_app/Features/favourite/widgets/new_list_button.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class AddToFavouriteView extends StatelessWidget {
  const AddToFavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: HightManager.h16),
          Text(
            "Add to favourite",
            style: StyleManager.textStyle20.copyWith(
              fontFamily: FontFamily.poppins,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: HightManager.h8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lists",
                style: StyleManager.textStyle18.copyWith(
                  fontFamily: FontFamily.poppins,
                ),
              ),
              const NewListButton()
            ],
          ),
          const SizedBox(height: HightManager.h8),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) => const FavouriteListItem(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


