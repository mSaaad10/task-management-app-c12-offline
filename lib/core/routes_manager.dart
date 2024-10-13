import 'package:flutter/material.dart';
import 'package:todo_app_c12_offline/presentation/auth/login/login_screen.dart';
import 'package:todo_app_c12_offline/presentation/auth/register/register_screen.dart';
import 'package:todo_app_c12_offline/presentation/screens/home/home_screen.dart';

class RoutesManager {
  static const String homeRoute = '/home';
  static const String registerRoute = '/register';
  static const String loginRoute = '/login';

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        {
          return MaterialPageRoute(
            builder: (context) => HomeScreen(),
          );
        }
      case registerRoute:
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        );
      case loginRoute:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
    }
  }
}

//Route<dynamic>? Function(RouteSettings)?
