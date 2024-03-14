import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/colors_manager.dart';
import 'package:guide_app/core/uitls/fonts_manager.dart';
import 'package:guide_app/core/uitls/values_manager.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>
    with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      controller: _motionTabBarController,
      initialSelectedTab: "Home",
      useSafeArea: true,
      labels: const ["Home", "MyTrips", "Favourites", "InBox", "Settings"],
      icons: const [
        Icons.home_outlined,
        Icons.shopping_bag_outlined,
        Icons.favorite_outline_rounded,
        Icons.mail_outlined,
        Icons.person_2_outlined,
      ],
      tabSize: ValuesManager.v56,
      tabBarHeight: ValuesManager.v56,
      textStyle: const TextStyle(
        fontSize: FontsSize.s14,
        color: ColorManager.primary,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.rufina,
      ),
      tabIconColor: ColorManager.primary,
      tabIconSize: ValuesManager.v40,
      tabIconSelectedSize: ValuesManager.v40,
      tabSelectedColor: ColorManager.primary,
      tabIconSelectedColor: Colors.white,
      tabBarColor: ColorManager.white,
      onTabItemSelected: (int value) {
        setState(() {
          _motionTabBarController!.index = value;
        });
      },
    );
  }
}
