import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/search/search_by_country/controller/search_country_cubit.dart';
import 'package:guide_app/Features/search/search_by_country/widgets/search_result_view.dart';
import 'package:guide_app/Features/search/search_by_country/widgets/search_text_filed.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SearchByCountryBody extends StatelessWidget {
  const SearchByCountryBody({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = BlocProvider.of<SearchCountryCubit>(context).searchCtrl;
    return Card(
      color: ColorManager.grey,
      margin: const EdgeInsets.all(MarginManager.m8),
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.p16),
        child: Column(
          children: [
            const SizedBox(height: HightManager.h24),
            SearchTextFiled(
              controller: controller,
              hintText: "Where are you going?",
            ),
            const SearchResultView(),
          ],
        ),
      ),
    );
  }
}
