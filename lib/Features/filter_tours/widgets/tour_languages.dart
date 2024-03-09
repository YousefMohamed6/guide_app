import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/filter_tours/cubit/filter_tours_cubit.dart';
import 'package:guide_app/core/widgets/choose_item.dart';

class TourLanguages extends StatelessWidget {
  const TourLanguages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterToursCubit, FilterToursState>(
      builder: (context, state) {
        bool isArabic = BlocProvider.of<FilterToursCubit>(context).isArabic;
        bool isEnglish = BlocProvider.of<FilterToursCubit>(context).isEnglish;
        bool isFrench = BlocProvider.of<FilterToursCubit>(context).isFrench;
        bool isSpanish = BlocProvider.of<FilterToursCubit>(context).isSpanish;
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChooseItem(
                text: "Arabic",
                isSelected: isArabic,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isArabic = value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "English",
                isSelected: isEnglish,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isEnglish = value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "French",
                isSelected: isFrench,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isFrench = value!;
                  BlocProvider.of<FilterToursCubit>(context).setState();
                },
              ),
              ChooseItem(
                text: "Spanish",
                isSelected: isSpanish,
                onChanged: (value) {
                  BlocProvider.of<FilterToursCubit>(context).isSpanish = value!;
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
