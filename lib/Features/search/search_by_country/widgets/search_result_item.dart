import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/search/search_by_date/search_by_date.dart';
import 'package:guide_app/core/uitls/assets_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/key_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key, required this.countryName});
  final String countryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: PaddingManager.p16,
      ),
      child: MaterialButton(
        onPressed: () {
          context.pushNamed(SearchByDate.routeName,
              queryParameters: {KeyManager.kCountry: countryName});
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.asset(
              AssetsManager.logo,
              width: 102,
              height: 102,
            ),
            const SizedBox(width: WidthManager.w16),
            Text(
              countryName,
              style: StyleManager.textStyle16.copyWith(
                fontFamily: FontFamily.sora,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
