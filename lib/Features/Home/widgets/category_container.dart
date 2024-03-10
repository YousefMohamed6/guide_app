import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
    required this.onTap,
  });
  final String text;
  final Color color;
  final Widget icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(PaddingManager.p16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            ValuesManager.borderRadius,
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: WidthManager.w8),
            Text(
              text,
              style: StyleManager.textStyle14,
            ),
          ],
        ),
      ),
    );
  }
}
