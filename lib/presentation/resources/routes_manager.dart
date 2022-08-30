import 'package:advanced_app/presentation/details_screen/details_screen.dart';
import 'package:advanced_app/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:advanced_app/presentation/home_screen/home_screen.dart';
import 'package:advanced_app/presentation/login_screen/login_screen.dart';
import 'package:advanced_app/presentation/onboarding_screen/view/onboarding_screen.dart';
import 'package:advanced_app/presentation/register_screen/register_screen.dart';
import 'package:advanced_app/presentation/resources/strings_manager.dart';
import 'package:advanced_app/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String onBoardingRoute = "/onBoarding";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String homeRoute = "/home";
  static const String detailsRoute = "/details";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.detailsRoute:
        return MaterialPageRoute(
          builder: (_) => const DetailsScreen(),
        );
      default:
        return unDefiendRoute();
    }
  }

  static Route<dynamic> unDefiendRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.notFound),
        ),
        body: Center(
          child: Text(
            AppStrings.notFound,
          ),
        ),
      ),
    );
  }
}
