import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/arrow_view.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ITINERABY extends StatelessWidget {
  const ITINERABY({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return ArrowView(
          text: "ITINERABY",
          isShow: BlocProvider.of<TourPageCubit>(context).isItineraby,
          hidenView: ITINERABYItemView(
            scrollController: scrollController,
          ),
          onTap: () {
            BlocProvider.of<TourPageCubit>(context).showItineraby();
          },
        );
      },
    );
  }
}

class ITINERABYItemView extends StatelessWidget {
  const ITINERABYItemView({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: PaddingManager.p8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AssetsManager.dayIcon,
              ),
              Text(
                "Day 1",
                style: StyleManager.textStyle16.copyWith(
                  color: ColorManager.primary,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
