import 'package:flutter/material.dart';
import 'package:todo_app/core/application_theme_manager.dart';
import 'package:todo_app/core/route_names.dart';
import 'package:todo_app/core/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TODO APP",
      initialRoute: RouteNames.initial,
      onGenerateRoute: RoutesGenerator.onGenerateRoute,
      theme: ApplicationThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

