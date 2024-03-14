import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/custom_arrow_icon.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class ArrowView extends StatelessWidget {
  const ArrowView({
    super.key,
    required this.text,
    required this.isShow,
    required this.onTap,
    required this.hidenView,
  });
  final String text;
  final bool isShow;
  final VoidCallback onTap;
  final Widget hidenView;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: StyleManager.textStyle18.copyWith(
                      color: ColorManager.secandry,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomArrowIcon(isHiden: isShow),
                ],
              ),
            ),
            const SizedBox(height: HightManager.h8),
            isShow ? hidenView : const SizedBox()
          ],
        );
      },
    );
  }
}
