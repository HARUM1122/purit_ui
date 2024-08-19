import 'package:flutter/material.dart';

import '../home/screen/home_screen.dart';
import '../home/screen/landing/landing_screen.dart';

import '../features/auth/presentation/screens/sign_in_screen.dart';
import '../features/auth/presentation/screens/sign_up_screen.dart';
import '../features/auth/presentation/screens/user_info_screen.dart';
import '../features/auth/presentation/screens/forgot_password_screen.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/landing-screen':
      return MaterialPageRoute(
        builder: (context) => const LandingScreen(),
      );
    case '/sign-in-screen':
      return MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      );
    case '/sign-up-screen':
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case '/user-info-screen':
      return MaterialPageRoute(
        builder: (context) => const UserInfoScreen(),
      );
    case '/forgot-password-screen':
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordScreen(),
      );
    case '/home-screen':
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
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