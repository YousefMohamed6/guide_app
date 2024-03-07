import 'package:flutter/material.dart';
import 'package:guide_app/core/uitls/route_manager.dart';
class MyApp extends StatelessWidget {
  const MyApp._internal();
  static const _instance = MyApp._internal();
  factory MyApp() => _instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      routerConfig: RouteManager.routConfig,
    );
  }
}
