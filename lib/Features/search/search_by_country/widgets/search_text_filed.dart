import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled(
      {super.key, required this.controller, required this.hintText, this.isEnabled});
  final TextEditingController controller;
  final String hintText;
  final bool? isEnabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: isEnabled,
      onChanged: (value) {},
      onFieldSubmitted: (value) {},
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Validation Text";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: ColorManager.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ValuesManager.v16),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ValuesManager.v16),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        hintText: hintText,
        prefixIcon: SvgPicture.asset(AssetsManager.locationCountry),
        prefixIconConstraints: const BoxConstraints(
          minWidth: ValuesManager.v56,
          minHeight: ValuesManager.v32,
        ),
      ),
    );
  }
}
