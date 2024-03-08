import 'package:flutter/material.dart';
import 'package:guide_app/Features/filter_tours/widgets/slider_view.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class BudgetView extends StatelessWidget {
  const BudgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.symmetric(horizontal: MarginManager.m8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: PaddingManager.p4,
                ),
                child: Text(r"$0"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: PaddingManager.p4,
                ),
                child: Text(r"$500"),
              ),
            ],
          ),
          SliderView(),
          SizedBox(height: HightManager.h8)
        ],
      ),
    );
  }
}
