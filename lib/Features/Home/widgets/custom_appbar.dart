import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/home_search_view.dart';
import 'package:guide_app/Features/Home/widgets/tours_categorys.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        HomeSearchView(
          hintText: hintText,
        ),
        const ToursCategorys(),
      ],
    );
  }
}
