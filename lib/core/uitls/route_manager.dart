import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/Home/home_view.dart';

abstract class RouteManager {
  static GoRouter routConfig = GoRouter(
    routes: [
      GoRoute(
        path: HomeView.routePath,
        name: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
