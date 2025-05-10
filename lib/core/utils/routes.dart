
  import 'package:bookly_clean_arc/core/utils/app_route.dart';
import 'package:bookly_clean_arc/features/home/presention/views/book_details_view.dart';
import 'package:bookly_clean_arc/features/home/presention/views/home_view.dart';
import 'package:bookly_clean_arc/features/search/presention/views/search_view.dart';
import 'package:bookly_clean_arc/features/splash/presenttaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';




 final router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoute.ksplash,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: AppRoute.khome,
      builder: (context, state) => HomeView(),
    ),
     GoRoute(
      path: AppRoute.kBookDetailsView,
      builder: (context, state) => BookDetailsView(),
    ),
     GoRoute(
      path: AppRoute.kSearchView,
      builder: (context, state) => SearchView(),
    ),
  ],
);