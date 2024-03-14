import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/search/search_by_country/controller/search_country_cubit.dart';
import 'package:guide_app/Features/search/search_by_country/widgets/search_view_body.dart';

class SearchByCountry extends StatelessWidget {
  const SearchByCountry({super.key});
  static const String routeName = "Search";
  static const String routePath = "/Search";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCountryCubit(),
      child: const SafeArea(
        child: Scaffold(
          body: SearchByCountryBody(),
        ),
      ),
    );
  }
}
