import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/filter_icon.dart';
import 'package:guide_app/Features/Home/widgets/search_text_feild.dart';

class SearchFiltering extends StatelessWidget {
  const SearchFiltering({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SearchTextField(),
        FilterIcon(),
      ],
    );
  }
}