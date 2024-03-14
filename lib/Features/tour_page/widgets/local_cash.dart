import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/arrow_view.dart';
import 'package:guide_app/Features/tour_page/widgets/cutom_text.dart';

class LocalCash extends StatelessWidget {
  const LocalCash({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return ArrowView(
          text: "Local Cash Needed",
          hidenView: ListView.builder(
            controller: scrollController,
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) => const CustomText(
                text: "400 Egyption pound -(approximately 28 USD per person)"),
          ),
          isShow: BlocProvider.of<TourPageCubit>(context).isLocalCashShow,
          onTap: () {
            BlocProvider.of<TourPageCubit>(context).showLoaclCash();
          },
        );
      },
    );
  }
}
