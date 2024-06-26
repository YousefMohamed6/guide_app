import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';

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
      activeColor: ColorManager.black,
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
