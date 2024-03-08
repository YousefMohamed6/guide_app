import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guide_app/Features/Home/widgets/custom_card.dart';

class ForYouCards extends StatelessWidget {
  const ForYouCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.35,
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomCard(
            title: "Spotless Nile View.",
            address: 'Cairo,Egypt',
            width: MediaQuery.sizeOf(context).width * 0.60,
            onTap: (){},
          );
        },
      ),
    );
  }
}
