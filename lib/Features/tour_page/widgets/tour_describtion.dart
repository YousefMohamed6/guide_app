import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/arrow_view.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';

class TourDescription extends StatelessWidget {
  const TourDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return ArrowView(
          text: "Tour Description (8 Hours)",
          isShow: BlocProvider.of<TourPageCubit>(context).isDecrebitionShow,
          hidenView: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.85,
            child: Text(
              "intersted in introduction Egypt in depth to the enthusiast tourists who love exploring and learning about ancient and modern Egypt ,my goals is to show your the real Egypt through egyption eyes",
              style: StyleManager.textStyle16.copyWith(
                color: ColorManager.primary,
              ),
            ),
          ),
          onTap: () {
            BlocProvider.of<TourPageCubit>(context).showDescrebtion();
          },
        );
      },
    );
  }
}
