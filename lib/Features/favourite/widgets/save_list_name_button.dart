import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SaveListNameButton extends StatelessWidget {
  const SaveListNameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ValuesManager.borderRadius,
        ),
      ),
      color: ColorManager.black,
      onPressed: () {
        context.pop();
      },
      child: Text(
        "Save",
        style: StyleManager.textStyle16.copyWith(
          color: ColorManager.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
