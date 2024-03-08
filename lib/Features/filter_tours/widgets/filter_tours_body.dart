import 'package:flutter/material.dart';
import 'package:guide_app/Features/filter_tours/widgets/budget_view.dart';
import 'package:guide_app/Features/filter_tours/widgets/search_button.dart';
import 'package:guide_app/Features/filter_tours/widgets/tour_categorys.dart';
import 'package:guide_app/Features/filter_tours/widgets/tour_languages.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class FilterToursBody extends StatelessWidget {
  const FilterToursBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: HightManager.h4),
        Text(
          "Budget",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: HightManager.h4),
        const BudgetView(),
        const SizedBox(height: HightManager.h4),
        Text(
          "Tour Language",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: HightManager.h4),
        const TourLanguages(),
        const SizedBox(height: HightManager.h4),
        Text(
          "Tour Category",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const TourCatagorys(),
        const Expanded(child: SearchButton()),
      ],
    );
  }
}
