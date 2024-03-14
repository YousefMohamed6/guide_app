import 'package:flutter/material.dart';
import 'package:guide_app/Features/favourite/widgets/new_list_view.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';

class NewListButton extends StatelessWidget {
  const NewListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        await showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            content: NewListView(),
          ),
        );
      },
      padding: EdgeInsets.zero,
      child: Text(
        "new list",
        style: StyleManager.textStyle16.copyWith(
          fontFamily: FontFamily.poppins,
        ),
      ),
    );
  }
}
