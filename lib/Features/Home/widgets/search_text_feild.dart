import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    var focusNode = FocusNode();
    return Expanded(
      child: TextFormField(
        style: const TextStyle(height: 0.1),
        cursorHeight: 24,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        focusNode: focusNode,
        controller: controller,
        decoration: InputDecoration(
          fillColor: ColorManager.white,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(ValuesManager.borderRadius),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(ValuesManager.borderRadius),
            ),
          ),
          prefixIcon: IconButton(
            onPressed: () {
              focusNode.requestFocus();
            },
            icon: const Icon(Icons.search),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
          ),
          hintText: "Search",
        ),
      ),
    );
  }
}