import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class FavouriteListItem extends StatelessWidget {
  const FavouriteListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: PaddingManager.p8,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () async {
              await showDialog(
                context: context,
                useRootNavigator: true,
                builder: (context) {
                  return const FavouriteImages();
                },
              );
            },
            child: SvgPicture.asset(
              AssetsManager.listIcon,
            ),
          ),
          const SizedBox(width: WidthManager.w8),
          Text(
            "List Name",
            style: StyleManager.textStyle18.copyWith(
              fontFamily: FontFamily.poppins,
            ),
          ),
          const Spacer(),
          GestureDetector(
            child: SvgPicture.asset(
              AssetsManager.addList,
            ),
          ),
          const SizedBox(width: WidthManager.w8),
        ],
      ),
    );
  }
}

class FavouriteImages extends StatelessWidget {
  const FavouriteImages({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Stack(
      alignment: Alignment.center,
      children: [
        PhotoViewGallery.builder(
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: const AssetImage(AssetsManager.review),
              initialScale: PhotoViewComputedScale.contained * 0.8,
            );
          },
          itemCount: 4,
          pageController: pageController,
          loadingBuilder: (context, event) => Center(
            child: SizedBox(
              width: 20.0,
              height: 20.0,
              child: CircularProgressIndicator(
                value: event == null
                    ? 0
                    : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              onPressed: () async {
                await pageController.previousPage(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn);
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: ColorManager.white,
              ),
            ),
            MaterialButton(
              onPressed: () async {
                await pageController.nextPage(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn);
              },
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManager.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
