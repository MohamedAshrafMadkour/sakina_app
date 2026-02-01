import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
