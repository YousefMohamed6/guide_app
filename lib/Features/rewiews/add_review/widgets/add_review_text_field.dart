import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/rewiews/add_review/controller/add_reviews_cubit.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class AddReviewFormField extends StatefulWidget {
  const AddReviewFormField({super.key});

  @override
  State<AddReviewFormField> createState() => _AddReviewFormFieldState();
}

class _AddReviewFormFieldState extends State<AddReviewFormField> {
  int charlenth = 0;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: BlocProvider.of<AddReviewsCubit>(context).addReviewsCtrl,
      minLines: 5,
      maxLines: 6,
      maxLength: 400,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      onChanged: (value) {
        setState(() {
          charlenth = value.characters.length;
        });
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.ofWhite,
        hintText: "Would You Write anything?",
        counterText: '${400 - charlenth} Chars Remaining',
        hintStyle: StyleManager.textStyle16.copyWith(
          fontFamily: FontFamily.poppins,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              ValuesManager.v8,
            ),
          ),
          borderSide: BorderSide.none,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              ValuesManager.v8,
            ),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
