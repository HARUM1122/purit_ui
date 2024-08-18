import 'package:flutter/material.dart';

import '../home/screen/landing/landing_screen.dart';

import '../features/auth/presentation/screens/sign_in_screen.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/landing-screen':
      return MaterialPageRoute(
        builder: (context) => const LandingScreen(),
      );
    case '/sign-in-screen':
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Material(
          color: Colors.white,
          child: Center(
            child: Text(
              "ROUTE DOESN'T EXIST"
            )
          ),
        )
      );
  }
}