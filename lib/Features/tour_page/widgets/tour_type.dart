import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/arrow_view.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class TourType extends StatelessWidget {
  const TourType({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return ArrowView(
          text: "Tour Type",
          isShow: BlocProvider.of<TourPageCubit>(context).isTourTypeShow,
          hidenView: const SeletedTourTypeView(),
          onTap: () {
            BlocProvider.of<TourPageCubit>(context).showTourType();
          },
        );
      },
    );
  }
}

class SeletedTourTypeView extends StatelessWidget {
  const SeletedTourTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TourTypeItem(
                  isSelected: BlocProvider.of<TourPageCubit>(context).isBusTour,
                  text: "Bus Tour",
                  onTap: () {
                    BlocProvider.of<TourPageCubit>(context).selectBusTour();
                  },
                ),
                TourTypeItem(
                  isSelected: BlocProvider.of<TourPageCubit>(context).isDayTrip,
                  text: "Day Trip",
                  onTap: () {
                    BlocProvider.of<TourPageCubit>(context).selectDayTrib();
                  },
                ),
                TourTypeItem(
                  isSelected: BlocProvider.of<TourPageCubit>(context).isWalking,
                  text: "Walking Tour",
                  onTap: () {
                    BlocProvider.of<TourPageCubit>(context).selectWalkingTour();
                  },
                ),
              ],
            ),
            const SizedBox(height: HightManager.h16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TourTypeItem(
                  isSelected:
                      BlocProvider.of<TourPageCubit>(context).isFoodAndDrink,
                  text: "Food & Drink",
                  onTap: () {
                    BlocProvider.of<TourPageCubit>(context)
                        .selectFoodAndDrink();
                  },
                ),
                TourTypeItem(
                  isSelected:
                      BlocProvider.of<TourPageCubit>(context).isBikeTour,
                  text: "Bike Tour",
                  onTap: () {
                    BlocProvider.of<TourPageCubit>(context).selectBickTour();
                  },
                ),
                TourTypeItem(
                  isSelected: BlocProvider.of<TourPageCubit>(context).isCruises,
                  text: "Cruises",
                  onTap: () {
                    BlocProvider.of<TourPageCubit>(context).selectCruises();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class TourTypeItem extends StatelessWidget {
  const TourTypeItem({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onTap,
  });
  final bool isSelected;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(ValuesManager.v16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            ValuesManager.borderRadius,
          ),
          color: isSelected ? ColorManager.primary : ColorManager.ofWhite,
        ),
        child: Text(
          text,
          style: StyleManager.textStyle16.copyWith(
            color: isSelected ? ColorManager.white : ColorManager.black,
          ),
        ),
      ),
    );
  }
}
