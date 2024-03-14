import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/arrow_view.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class MeetingPointer extends StatelessWidget {
  const MeetingPointer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return ArrowView(
          text: "Meeting Point",
          isShow: BlocProvider.of<TourPageCubit>(context).isMeetingPointerShow,
          hidenView: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cruise Ship Port, Hotel",
                style: StyleManager.textStyle16.copyWith(
                  color: ColorManager.primary,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        ValuesManager.borderRadius,
                      ),
                      side: const BorderSide(color: ColorManager.black),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AssetsManager.locationOutline,
                        ),
                        const SizedBox(width: WidthManager.w4),
                        const Text("PickUp Location"),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          onTap: () {
            BlocProvider.of<TourPageCubit>(context).showMeetingPointer();
          },
        );
      },
    );
  }
}