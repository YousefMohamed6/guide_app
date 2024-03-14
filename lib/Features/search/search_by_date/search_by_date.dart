import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/search/search_by_date/controller/search_date_cubit.dart';
import 'package:guide_app/Features/search/search_by_date/widgets/search_by_date_body.dart';

class SearchByDate extends StatelessWidget {
  const SearchByDate({super.key});
  static const String routeName = "SearchByData";
  static const String routePath = "/SearchData";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchDateCubit(),
      child: const SafeArea(
        child: Scaffold(
          body: SearchByDateBody(),
        ),
      ),
    );
  }
}
