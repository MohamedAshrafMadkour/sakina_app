import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/features/location_permission/presentation/views/location_permission.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:sakina_app/features/qibla/presentation/view/qibla_view.dart';
import 'package:sakina_app/features/settings/presentation/view/settings_view.dart';
import 'package:sakina_app/features/splash/presentation/view/splash_view.dart';
import 'package:sakina_app/features/tasbih/presentation/view/tasbih_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case AppRoutes.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case AppRoutes.nearbyMosquesView:
      return MaterialPageRoute(builder: (_) => const NearbyMosques());
    case AppRoutes.locationPermissionView:
      return MaterialPageRoute(builder: (_) => const LocationPermissionView());
    case AppRoutes.tasbihView:
      return MaterialPageRoute(builder: (_) => const TasbihView());
    case AppRoutes.qiblaView:
      return MaterialPageRoute(builder: (_) => const QiblaView());
    case AppRoutes.settingsView:
      return MaterialPageRoute(builder: (_) => const SettingsView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
