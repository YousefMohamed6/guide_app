import 'package:flutter/material.dart';
import 'package:guide_app/Features/tour_page/widgets/povider_service_details.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ProviderServiceView extends StatelessWidget {
  const ProviderServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorManager.primary,
        ),
        SizedBox(width: WidthManager.w16),
        ProviderServiceDetails(),
      ],
    );
  }
}
