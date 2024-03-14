import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';
import 'package:image_picker/image_picker.dart';

class AddPictureToReview extends StatelessWidget {
  const AddPictureToReview({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        XFile? file = await ImagePicker().pickMedia();
        debugPrint(file?.name);
      },
      child: Container(
        padding: const EdgeInsets.all(PaddingManager.p24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ValuesManager.v8),
          color: ColorManager.ofWhite,
        ),
        child: Column(
          children: [
            const Icon(
              Icons.cloud_upload,
              size: ValuesManager.v56,
            ),
            const SizedBox(height: HightManager.h16),
            Text(
              "click here to Upload",
              style: StyleManager.textStyle16.copyWith(
                fontFamily: FontFamily.poppins,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
