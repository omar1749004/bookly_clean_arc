
  import 'package:bookly_clean_arc/core/utils/routes.dart';
import 'package:bookly_clean_arc/features/home/presention/views/home_view.dart';
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
  ],
);
