import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key, required this.onPressed, this.iconColor});
  final VoidCallback onPressed;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: SvgPicture.asset(
        AssetsManager.fillter,
        color: iconColor,
      ),
    );
  }
}
