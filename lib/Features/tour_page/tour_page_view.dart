import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/favourite/favorite_icon.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/tour_page_body.dart';

class TourPageView extends StatelessWidget {
  const TourPageView({super.key});
  static const String routeName = "TourPage";
  static const String routePath = "/TourPage";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TourPageCubit(),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            FavoriteIcon(),
          ],
        ),
        body: const TourPageBody(),
      ),
    );
  }
}
