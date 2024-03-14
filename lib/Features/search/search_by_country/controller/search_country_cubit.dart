import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_country_state.dart';

class SearchCountryCubit extends Cubit<SearchCountryState> {
  SearchCountryCubit() : super(SearchCountryInitial());
  final searchCtrl = TextEditingController();
}
