import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/Home/widgets/filter_icon.dart';
import 'package:guide_app/Features/rewiews/show_reviews/cubit/show_reviews_cubit.dart';
import 'package:guide_app/Features/rewiews/show_reviews/widgets/show_review_body.dart';
import 'package:guide_app/Features/rewiews/show_reviews/widgets/write_review_button.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';

class ShowReviewsView extends StatelessWidget {
  const ShowReviewsView({super.key});
  static const String routeName = "ShowReviews";
  static const String routePath = "/ShowReviews";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowReviewsCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Reviews"),
            centerTitle: true,
            actions: [
              FilterIcon(
                onPressed: () {},
                iconColor: ColorManager.black,
              ),
            ],
          ),
          body: const ShowReviewsBody(),
          bottomSheet: const WriteReviewButton(),
        ),
      ),
    );
  }
}
