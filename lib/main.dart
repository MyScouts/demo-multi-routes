import 'package:demo_multi_route/go_route_page.dart';
import 'package:demo_multi_route/normal_route_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashGoRoutePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'go-route',
          builder: (BuildContext context, GoRouterState state) {
            return const GoRoutePage();
          },
        ),
        GoRoute(
          path: 'normal-route',
          builder: (BuildContext context, GoRouterState state) {
            return const NormalRoutePage();
          },
        ),
      ],
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
