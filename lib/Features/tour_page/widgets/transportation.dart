import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/tour_page/controller/tour_page_cubit.dart';
import 'package:guide_app/Features/tour_page/widgets/arrow_view.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class Transportation extends StatelessWidget {
  const Transportation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return ArrowView(
          text: "Transportation",
          isShow: BlocProvider.of<TourPageCubit>(context).isTransportationShow,
          hidenView: const SelectTranstationType(),
          onTap: () {
            BlocProvider.of<TourPageCubit>(context).showTransportation();
          },
        );
      },
    );
  }
}

class TrasportTypeItem extends StatelessWidget {
  const TrasportTypeItem({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onTap,
    required this.icon,
  });
  final bool isSelected;
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(ValuesManager.v16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            ValuesManager.borderRadius,
          ),
          color: isSelected ? ColorManager.primary : ColorManager.ofWhite,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? ColorManager.white : ColorManager.black,
            ),
            const SizedBox(width: WidthManager.w4),
            Text(
              text,
              style: StyleManager.textStyle16.copyWith(
                color: isSelected ? ColorManager.white : ColorManager.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectTranstationType extends StatelessWidget {
  const SelectTranstationType({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TourPageCubit, TourPageState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TrasportTypeItem(
              text: "Car",
              icon: Icons.local_taxi_rounded,
              isSelected: BlocProvider.of<TourPageCubit>(context).isCar,
              onTap: () {
                BlocProvider.of<TourPageCubit>(context).selectCar();
              },
            ),
            TrasportTypeItem(
              text: "Bus",
              icon: Icons.directions_bus_rounded,
              isSelected: BlocProvider.of<TourPageCubit>(context).isBus,
              onTap: () {
                BlocProvider.of<TourPageCubit>(context).selectBus();
              },
            ),
          ],
        );
      },
    );
  }
}
