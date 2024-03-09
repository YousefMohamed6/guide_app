import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/favourite/controller/favourite_cubit.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class LsitNameTextFormFiled extends StatelessWidget {
  const LsitNameTextFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = BlocProvider.of<FavouriteCubit>(context).listNameCtrl;
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "List Name",
        labelStyle: StyleManager.textStyle16.copyWith(
          fontFamily: FontFamily.poppins,
          color: ColorManager.black,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(ValuesManager.v8),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(ValuesManager.v8),
          ),
        ),
      ),
    );
  }
}
