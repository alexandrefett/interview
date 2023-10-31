import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview/domain/entities/sport_event_entity.dart';
import 'package:interview/presentation/screens/detail_screen.dart';
import 'package:interview/presentation/screens/home_screen.dart';

class Routes {
  static const String home = '/home';
  static const String detail = 'detail';
}

final goRouter = GoRouter(initialLocation: Routes.home, debugLogDiagnostics: true, routes: <RouteBase>[
  GoRoute(
    path: Routes.home,
    name: Routes.home,
    builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
    routes: <RouteBase>[
      GoRoute(
          name: Routes.detail,
          path: Routes.detail,
          builder: (BuildContext context, GoRouterState state) {
            final sportEvent = state.extra as SportEventEntity;
            return DetailScreen(
              sportEvent: sportEvent,
            );
          }),
    ],
  ),
]);
