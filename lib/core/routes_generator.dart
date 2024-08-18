import 'package:flutter/material.dart';
import 'package:todo_app/core/route_names.dart';
import 'package:todo_app/modules/layout/layout_view.dart';
import 'package:todo_app/modules/login/login_view.dart';
import 'package:todo_app/modules/registration/registration_view.dart';
import 'package:todo_app/modules/splash/splash_view.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initial:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        );
      case RouteNames.login:
        return MaterialPageRoute(
          builder: (context) => LoginView(),
          settings: settings,
        );
      case RouteNames.registration:
        return MaterialPageRoute(
          builder: (context) => RegistrationView(),
          settings: settings,
        );
      case RouteNames.layout:
        return MaterialPageRoute(
          builder: (context) => LayoutView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        );
    }
  }
}
