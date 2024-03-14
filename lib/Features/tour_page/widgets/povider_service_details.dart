import 'package:flutter/widgets.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ProviderServiceDetails extends StatelessWidget {
  const ProviderServiceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Guided By Robyn",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
            color: ColorManager.primary,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: MarginManager.m4),
          height: 1,
          width: MediaQuery.sizeOf(context).width * 0.40,
          color: ColorManager.black,
        ),
        Text(
          "Giza, pyramids st, Egypt",
          style: StyleManager.textStyle12.copyWith(
            color: ColorManager.secandry,
          ),
        ),
      ],
    );
  }
}
