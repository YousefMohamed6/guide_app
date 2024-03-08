import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/filter_tours/cubit/filter_tours_cubit.dart';
import 'package:guide_app/core/uitls/styles_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class FilterToursView extends StatelessWidget {
  const FilterToursView({super.key});
  static const String routeName = "FilterTours";
  static const String routePath = "/FilterTours";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterToursCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: FilterToursBody(),
        ),
      ),
    );
  }
}

class FilterToursBody extends StatelessWidget {
  const FilterToursBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: HightManager.h8),
        Text(
          "Budget",
          style: StyleManager.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: HightManager.h8),
        const PriceSlider()
      ],
    );
  }
}

class PriceSlider extends StatelessWidget {
  const PriceSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.symmetric(horizontal: MarginManager.m8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: PaddingManager.p4,
                ),
                child: Text(r"$0"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: PaddingManager.p4,
                ),
                child: Text(r"$500"),
              ),
            ],
          ),
          SliderView(),
          SizedBox(height: HightManager.h8)
        ],
      ),
    );
  }
}

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  double _currentValue = 100;
  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      value: _currentValue,
      min: 0,
      divisions: 5,
      max: 500,
      activeColor: Colors.black,
      thumbColor: Colors.white,
      onChanged: (value) {
        setState(() {
          _currentValue = value;
        });
      },
      label: _currentValue.round().toString(),
    );
  }
}
