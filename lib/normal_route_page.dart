import 'package:flutter/material.dart';

class NormalRoutePage extends StatefulWidget {
  const NormalRoutePage({super.key});

  @override
  State<NormalRoutePage> createState() => _NormalRoutePageState();
}

class _NormalRoutePageState extends State<NormalRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        final String? name = settings.name;
        if (name == '/page2') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return const Page2();
            },
          );
        }

        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return const Page1();
          },
        );
      },
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Page 1'),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/page2');
          },
          child: const Text('Go to Page 2'),
        ),
      ],
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Page 2'),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Go back to Page 1'),
        ),
      ],
    );
  }
}
