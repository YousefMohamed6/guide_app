import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

part 'search_date_state.dart';

class SearchDateCubit extends Cubit<SearchDateState> {
  SearchDateCubit() : super(SearchDateInitial());
  final searchCtrl = TextEditingController();
  bool isDay = true;
  bool isWeek = false;
  bool isMonth = false;
  CalendarView calenderView = CalendarView.month;
  var calendarController = CalendarController();
  
}
