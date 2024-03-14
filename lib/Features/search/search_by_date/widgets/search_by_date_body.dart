import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/search/search_by_country/widgets/search_text_filed.dart';
import 'package:guide_app/Features/search/search_by_date/controller/search_date_cubit.dart';
import 'package:guide_app/Features/search/search_by_date/widgets/calender_view.dart';
import 'package:guide_app/Features/travels/travels.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/key_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';
import 'package:guide_app/core/widgets/search_button.dart';

class SearchByDateBody extends StatelessWidget {
  const SearchByDateBody({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = BlocProvider.of<SearchDateCubit>(context).searchCtrl;
    return Card(
      margin: const EdgeInsets.all(MarginManager.m16),
      color: ColorManager.grey,
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.p16),
        child: Column(
          children: [
            const SizedBox(height: HightManager.h16),
            SearchTextFiled(
              controller: controller,
              isEnabled: false,
              hintText: GoRouterState.of(context)
                  .uri
                  .queryParameters[KeyManager.kCountry]!,
            ),
            const SizedBox(height: HightManager.h16),
            const CalenderView(),
            const SizedBox(height: HightManager.h16),
            SearchButton(
              onPressed: () {
                context.push(TravelsView.routePath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
