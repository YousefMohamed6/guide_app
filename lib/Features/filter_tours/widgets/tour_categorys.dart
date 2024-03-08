import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/filter_tours/cubit/filter_tours_cubit.dart';
import 'package:guide_app/core/widgets/choose_item.dart';

class TourCatagorys extends StatelessWidget {
  const TourCatagorys({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterToursCubit, FilterToursState>(
      builder: (context, state) {
        bool isWalking = BlocProvider.of<FilterToursCubit>(context).isWalking;
        bool isFoodAndDrink =
            BlocProvider.of<FilterToursCubit>(context).isFoodAndDrink;
        bool isDayTrip = BlocProvider.of<FilterToursCubit>(context).isDayTrip;
        bool isBusTour = BlocProvider.of<FilterToursCubit>(context).isBusTour;
        bool isBikeTour = BlocProvider.of<FilterToursCubit>(context).isBikeTour;
        bool isCruises = BlocProvider.of<FilterToursCubit>(context).isCruises;
        bool isNightLife =
            BlocProvider.of<FilterToursCubit>(context).isNightLife;
        return Card(
          child: Column(
            children: [
              ChooseItem(
                text: "Walking Tour",
                isSelected: isWalking,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isWalking = value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "Food & Drink",
                isSelected: isFoodAndDrink,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isFoodAndDrink =
                      value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "Day Trip",
                isSelected: isDayTrip,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isDayTrip = value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "Bus Tour",
                isSelected: isBusTour,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isBusTour = value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "Bike Tour",
                isSelected: isBikeTour,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isBikeTour =
                      value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "Cruises",
                isSelected: isCruises,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isCruises = value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "Night Life",
                isSelected: isNightLife,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isNightLife =
                      value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
