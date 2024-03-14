import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            ValuesManager.v8,
          ),
          side: const BorderSide(
            color: ColorManager.black,
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          "Search",
          style: StyleManager.textStyle16,
        ),
      ),
    );
  }
}
