import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/rewiews/add_review/controller/add_reviews_cubit.dart';
import 'package:guide_app/Features/rewiews/add_review/widgets/add_view_body.dart';
import 'package:guide_app/Features/rewiews/add_review/widgets/submit_review_button.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';

class AddReviewsView extends StatelessWidget {
  const AddReviewsView({super.key});
  static const String routeName = "WriteReviews";
  static const String routePath = "/WriteReviews";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddReviewsCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Write A Review"),
            centerTitle: true,
            backgroundColor: ColorManager.ofWhite,
          ),
          body: const AddReviewsBody(),
          bottomNavigationBar: const SubmitReviewButton(),
        ),
      ),
    );
  }
}
