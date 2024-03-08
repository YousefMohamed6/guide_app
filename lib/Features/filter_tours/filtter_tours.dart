import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/filter_tours/cubit/filter_tours_cubit.dart';
import 'package:guide_app/Features/filter_tours/widgets/filter_tours_body.dart';

class FilterToursView extends StatelessWidget {
  const FilterToursView({super.key});
  static const String routeName = "FilterTours";
  static const String routePath = "/FilterTours";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterToursCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: FilterToursBody(),
        ),
      ),
    );
  }
}
