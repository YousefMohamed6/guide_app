import 'package:go_router/go_router.dart';
import 'package:guide_app/Features/Home/home_view.dart';
import 'package:guide_app/Features/filter_tours/filtter_tours.dart';
import 'package:guide_app/Features/rewiews/show_reviews/show_reviews.dart';
import 'package:guide_app/Features/rewiews/add_review/add_reviews_view.dart';
import 'package:guide_app/Features/search/search_by_country/search_by_country_view.dart';
import 'package:guide_app/Features/search/search_by_date/search_by_date.dart';
import 'package:guide_app/Features/tour_page/tour_page_view.dart';
import 'package:guide_app/Features/travels/travels.dart';

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
      GoRoute(
        path: SearchByCountry.routePath,
        name: SearchByCountry.routeName,
        builder: (context, state) => const SearchByCountry(),
      ),
      GoRoute(
        path: SearchByDate.routePath,
        name: SearchByDate.routeName,
        builder: (context, state) => const SearchByDate(),
      ),
      GoRoute(
        path: TravelsView.routePath,
        name: TravelsView.routeName,
        builder: (context, state) => const TravelsView(),
      ),
      GoRoute(
        path: TourPageView.routePath,
        name: TourPageView.routeName,
        builder: (context, state) => const TourPageView(),
      ),
      GoRoute(
        path: AddReviewsView.routePath,
        name: AddReviewsView.routeName,
        builder: (context, state) => const AddReviewsView(),
      ),
      GoRoute(
        path: ShowReviewsView.routePath,
        name: ShowReviewsView.routeName,
        builder: (context, state) => const ShowReviewsView(),
      ),
    ],
  );
}
