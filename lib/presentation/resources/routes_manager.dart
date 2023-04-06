import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justhink_new_mobil_application_purple/presentation/forgot_password/forgot_password_view.dart';
import 'package:justhink_new_mobil_application_purple/presentation/login/login_view.dart';
import 'package:justhink_new_mobil_application_purple/presentation/main/main_view.dart';
import 'package:justhink_new_mobil_application_purple/presentation/onboarding/onboarding_view.dart';
import 'package:justhink_new_mobil_application_purple/presentation/register/register_view.dart';
import 'package:justhink_new_mobil_application_purple/presentation/splash/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/";
  static const String loginRoute = "/";
  static const String registerRoute = "/";
  static const String forgotPasswordRoute = "/";
  static const String mainRoute = "/";
  static const String storeDetailsRoute = "/";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => SplashView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => OnboardingView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => RegisterView(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (_) => MainView(),
        );
      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("No Route Found"),
        ),
        body: Center(
          child: Text('No Route Found'),
        ),
      ),
    );
  }
}
