import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/Home/home_view.dart';
import 'package:guide_app/Features/filter_tours/filtter_tours.dart';

abstract class RouteManager {
  static GoRouter routConfig = GoRouter(
    routes: [
      GoRoute(
        path: HomeView.routePath,
        name: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: FilterToursView.routePath,
        name: FilterToursView.routeName,
        builder: (context, state) => const FilterToursView(),
      ),
    ],
  );
}
