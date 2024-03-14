import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/search/search_by_date/controller/search_date_cubit.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenderView extends StatelessWidget {
  const CalenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchDateCubit, SearchDateState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(PaddingManager.p16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              ValuesManager.v16,
            ),
            color: ColorManager.white,
          ),
          child: SfCalendar(
            view: BlocProvider.of<SearchDateCubit>(context).calenderView,
            allowAppointmentResize: true,
            showNavigationArrow: true,
            controller:
                BlocProvider.of<SearchDateCubit>(context).calendarController,
          ),
        );
      },
    );
  }
}
