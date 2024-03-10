import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guide_app/Features/Home/widgets/custom_card.dart';
import 'package:guide_app/Features/Home/widgets/custom_card_for_you.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';

class ForYouCards extends StatelessWidget {
  const ForYouCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 12),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*0.378 ,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding:EdgeInsets.only(right: 9),
              child: CustomCardForYou(
                imagePath: AssetsManager.logo,
                title: "Spotless Nile View.",
                address: 'Cairo,Egypt',
                onTap: () {
                  debugPrint("Pressed");
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
