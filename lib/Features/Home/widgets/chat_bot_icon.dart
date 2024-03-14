import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ChatBotIcon extends StatelessWidget {
  const ChatBotIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Pressed");
      },
      child: Container(
        padding: const EdgeInsets.all(PaddingManager.p8),
        decoration: const BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(
              ValuesManager.borderRadius,
            ),
          ),
        ),
        child: SvgPicture.asset(AssetsManager.chatBot),
      ),
    );
  }
}
