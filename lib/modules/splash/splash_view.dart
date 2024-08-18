import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:todo_app/core/route_names.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
    () {

      Navigator.pushReplacementNamed(context, RouteNames.login);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/splash_background.png",fit: BoxFit.cover);
  }
}
