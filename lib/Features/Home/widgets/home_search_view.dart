import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/Home/widgets/filter_icon.dart';
import 'package:guide_app/Features/filter_tours/filtter_tours.dart';
import 'package:guide_app/Features/search/search_by_country/search_by_country_view.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class HomeSearchView extends StatelessWidget {
  const HomeSearchView({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).height * 0.16,
          decoration: const BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                ValuesManager.borderRadius,
              ),
              bottomRight: Radius.circular(
                ValuesManager.borderRadius,
              ),
            ),
          ),
          child: Row(
            children: [
              SearchContainer(
                hintText: hintText,
              ),
              FilterIcon(
                onPressed: () {
                  context.push(FilterToursView.routePath);
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: ValuesManager.v24),
      ],
    );
  }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          context.push(SearchByCountry.routePath);
        },
        child: Container(
          padding: const EdgeInsets.only(left: PaddingManager.p8),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(
              ValuesManager.borderRadius,
            ),
          ),
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(width: WidthManager.w16),
              Text(
                hintText,
                style: StyleManager.textStyle16,
              ),
              const Spacer(),
              const SearchByMicButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchByMicButton extends StatelessWidget {
  const SearchByMicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        debugPrint("Mic opened");
      },
      icon: const Icon(Icons.mic),
    );
  }
}
