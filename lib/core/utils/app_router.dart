import 'package:bookly/features/Home/presentation/view/book_details_view.dart';
import 'package:bookly/features/Home/presentation/view/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: homeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: bookDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        return const BookDetailsView();
      },
    ),
  ]);
}
