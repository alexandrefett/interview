import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview/inject_dependencies.dart';
import 'package:interview/routes/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injectDependencies();
  runApp(MyApp(goRouter: goRouter));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.goRouter});

  final GoRouter goRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Flutter Task Interview',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
