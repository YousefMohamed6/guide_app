import 'package:flutter/material.dart';
import 'package:guide_app/Features/Home/widgets/home_view_body.dart';
import 'package:guide_app/Features/Home/widgets/search_appbar.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routePath = "/";
  static const String routeName = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchFiltering(),
        backgroundColor: ColorManager.primary,
      ),
      body: const HomeViewBody(),
    );
  }
}
