import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/Home/controller/home_cubit.dart';
import 'package:guide_app/Features/Home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routePath = "/";
  static const String routeName = "Home";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
