import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({super.key, required this.price});
  final String? price;
  @override
  Widget build(BuildContext context) {
    return Text(price! + r"$ /person");
  }
}
