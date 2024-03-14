import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/filter_tours/widgets/budget_view.dart';
import 'package:guide_app/Features/filter_tours/widgets/tour_categorys.dart';
import 'package:guide_app/Features/filter_tours/widgets/tour_languages.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';
import 'package:guide_app/core/widgets/search_button.dart';

class FilterToursBody extends StatelessWidget {
  const FilterToursBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p8),
      children: [
        const SizedBox(height: HightManager.h8),
        Text(
          "Budget",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: HightManager.h8),
        const BudgetView(),
        const SizedBox(height: HightManager.h8),
        Text(
          "Tour Language",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: HightManager.h8),
        const TourLanguages(),
        const SizedBox(height: HightManager.h8),
        Text(
          "Tour Category",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const TourCatagorys(),
        const SizedBox(height: HightManager.h8),
        SearchButton(
          onPressed: () {
            context.pop();
          },
        ),
      ],
    );
  }
}
