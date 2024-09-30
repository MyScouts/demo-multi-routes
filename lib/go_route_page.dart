import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRoutePage extends StatefulWidget {
  const GoRoutePage({super.key});

  @override
  State<GoRoutePage> createState() => _GoRoutePageState();
}

class _GoRoutePageState extends State<GoRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Go Route Page'),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go('/normal-route');
          },
          child: const Text('Go to Splash Go Route Page'),
        ),
      ],
    );
  }
}

class SplashGoRoutePage extends StatefulWidget {
  const SplashGoRoutePage({super.key});

  @override
  State<SplashGoRoutePage> createState() => _SplashGoRoutePageState();
}

class _SplashGoRoutePageState extends State<SplashGoRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Splash Page'),
        ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go('/go-route');
          },
          child: const Text('Go to Go Route Page'),
        ),
      ],
    );
  }
}
