import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/Home/controller/home_cubit.dart';
import 'package:guide_app/Features/travels/widgets/travels_body.dart';
import 'package:guide_app/core/widgets/custom_buttom_navigation_bar.dart';

class TravelsView extends StatelessWidget {
  const TravelsView({super.key});
  static const String routeName = "trevals";
  static const String routePath = "/trevals";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const Scaffold(
        body: TravelsBody(),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
