import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });
  final String text;
  final Color color;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(PaddingManager.p16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          ValuesManager.borderRadius,
        ),
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: WidthManager.w8),
          Text(
            text,
            style: StyleManager.textStyle14,
          ),
        ],
      ),
    );
  }
}