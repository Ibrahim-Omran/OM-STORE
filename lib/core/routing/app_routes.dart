import 'package:flutter/material.dart';
import 'package:omstore/core/routing/base_routes.dart';

class AppRoutes{

  static const String login = 'login';
  static const String signUp = 'signUp';

  static Route<void> onGenerateRoutes(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name){
      case login:
        return BaseRoute(page: Scaffold(
          body: const Center(
            child: Text('Login'),
          ),
        ));
      // case signUp:
      //   return BaseRoute(page: const SignUpScreen());
      default:
        return BaseRoute(page: const Scaffold(
          body: Center(
            child: Text('No Route Found'),
          ),
        ));
    }
  }
}