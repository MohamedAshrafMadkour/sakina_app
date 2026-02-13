import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/quran_learning_view.dart';
import 'package:sakina_app/features/azkar/presentation/views/azkar_details_view.dart';
import 'package:sakina_app/features/azkar/presentation/views/azkar_view.dart';
import 'package:sakina_app/features/language_selection/presentation/views/language_selection_view.dart';
import 'package:sakina_app/features/location_permission/presentation/views/location_permission.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:sakina_app/features/reminder/presentation/views/add_reminder_view.dart';
import 'package:sakina_app/features/reminder/presentation/views/reminders_view.dart';
import 'package:sakina_app/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case AppRoutes.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case AppRoutes.languageSelectionView:
      return MaterialPageRoute(builder: (_) => const LanguageSelectionView());
    case AppRoutes.locationPermissionView:
      return MaterialPageRoute(builder: (_) => const LocationPermissionView());
    case AppRoutes.azkarView:
      return MaterialPageRoute(builder: (_) => const AzkarView());
    case AppRoutes.azkarDetailsView:
      return MaterialPageRoute(builder: (_) => const AzkarDetailsView());
    case AppRoutes.quranLearningView:
      return MaterialPageRoute(builder: (_) => const QuranLearningView());
    case AppRoutes.reminderView:
      return MaterialPageRoute(builder: (_) => const RemindersView());
    case AppRoutes.addReminderView:
      return MaterialPageRoute(builder: (_) => const AddReminderView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
