import 'package:flutter/material.dart';
import 'package:guide_app/Features/tour_page/widgets/descraption_text.dart';
import 'package:guide_app/Features/tour_page/widgets/excluded.dart';
import 'package:guide_app/Features/tour_page/widgets/included.dart';
import 'package:guide_app/Features/tour_page/widgets/itineraby.dart';
import 'package:guide_app/Features/tour_page/widgets/local_cash.dart';
import 'package:guide_app/Features/tour_page/widgets/meeting_point.dart';
import 'package:guide_app/Features/tour_page/widgets/part_of_rating.dart';
import 'package:guide_app/Features/tour_page/widgets/provider_service_view.dart';
import 'package:guide_app/Features/tour_page/widgets/review_text.dart';
import 'package:guide_app/Features/tour_page/widgets/show_review_button.dart';
import 'package:guide_app/Features/tour_page/widgets/tour_describtion.dart';
import 'package:guide_app/Features/tour_page/widgets/tour_type.dart';
import 'package:guide_app/Features/tour_page/widgets/transportation.dart';
import 'package:guide_app/Features/travels/widgets/navigation_image.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class TourPageBody extends StatelessWidget {
  const TourPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return ListView(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingManager.p16,
      ),
      children: [
        const NavigationImage(),
        const SizedBox(height: HightManager.h16),
        const DescribtionText(),
        const SizedBox(height: HightManager.h16),
        const ProviderServiceView(),
        const SizedBox(height: HightManager.h16),
        const TourDescription(),
        const SizedBox(height: HightManager.h24),
        const TourType(),
        const SizedBox(height: HightManager.h24),
        ITINERABY(
          scrollController: scrollController,
        ),
        const SizedBox(height: HightManager.h24),
        const MeetingPointer(),
        const SizedBox(height: HightManager.h24),
        const Transportation(),
        const SizedBox(height: HightManager.h24),
        Included(
          scrollController: scrollController,
        ),
        const SizedBox(height: HightManager.h24),
        Excluded(
          scrollController: scrollController,
        ),
        const SizedBox(height: HightManager.h24),
        LocalCash(
          scrollController: scrollController,
        ),
        const SizedBox(height: HightManager.h24),
        const ReviewsText(),
        PartOfReviews(
          scrollController: scrollController,
        ),
        const SizedBox(height: HightManager.h16),
        const ShowReviewsButton(),
        const SizedBox(height: HightManager.h24),
      ],
    );
  }
}
