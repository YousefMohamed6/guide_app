import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/filter_tours/filtter_tours.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      child: SvgPicture.asset(AssetsManager.fillter),
      onPressed: () {
        context.push(FilterToursView.routePath);
      },
    );
  }
}
