import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/Home/widgets/custom_card.dart';
import 'package:guide_app/Features/tour_page/tour_page_view.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';

class ForYouCards extends StatelessWidget {
  const ForYouCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.40,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomCard(
            imagePath: AssetsManager.logo,
            title: "Spotless Nile View.",
            address: 'Cairo,Egypt',
            onTap: () {
              context.push(TourPageView.routePath);
            },
          );
        },
      ),
    );
  }
}
