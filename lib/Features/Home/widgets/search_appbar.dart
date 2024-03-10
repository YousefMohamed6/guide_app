import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guide_app/Features/Home/widgets/filter_icon.dart';
import 'package:guide_app/Features/Home/widgets/search_text_feild.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SearchFiltering extends StatelessWidget {
  const SearchFiltering({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: PaddingManager.p16),
     // margin: const EdgeInsets.symmetric(horizontal: MarginManager.m4),
      height: MediaQuery.sizeOf(context).height * 0.20,
      decoration: const BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(
            ValuesManager.borderRadius,
          ),
          bottomLeft: Radius.circular(
            ValuesManager.borderRadius,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 20,),
          SearchTextField(),
          FilterIcon(),
        ],
      ),
    );
  }
}
