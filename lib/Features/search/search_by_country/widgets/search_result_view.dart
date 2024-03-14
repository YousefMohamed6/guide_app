import 'package:flutter/material.dart';
import 'package:guide_app/Features/search/search_by_country/widgets/search_result_item.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          List<String> suggestionCountry = ["Egypt", "Italy", "Spain"];
          return SearchResultItem(
            countryName: suggestionCountry[index],
          );
        },
      ),
    );
  }
}