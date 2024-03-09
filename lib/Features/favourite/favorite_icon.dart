import 'package:flutter/material.dart';
import 'package:guide_app/Features/favourite/widgets/add_to_favourite_view.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: MarginManager.m8,
        top: MarginManager.m8,
      ),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ValuesManager.borderRadius,
        ),
        color: ColorManager.hartBackgroundColor,
      ),
      child: IconButton(
        icon: const Icon(
          Icons.favorite_border,
          size: ValuesManager.v24,
        ),
        onPressed: () async {
          await showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  ValuesManager.v16,
                ),
                topRight: Radius.circular(
                  ValuesManager.v16,
                ),
              ),
            ),
            backgroundColor: ColorManager.white,
            builder: ((context) {
              return const AddToFavouriteView();
            }),
          );
        },
      ),
    );
  }
}
