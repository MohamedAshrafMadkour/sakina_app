import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/core/constants/theme/dark_theme.dart';
import 'package:sakina_app/core/constants/theme/light_theme.dart';

import 'package:sakina_app/core/manager/theme_hydrated_cubit.dart';
import 'package:sakina_app/core/utils/on_generate_route.dart';

class SakinaApp extends StatelessWidget {
  const SakinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeState) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          title: 'Sakina App',
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: themeState,
          initialRoute: AppRoutes.reminderView,
        );

        // return BlocBuilder<LanguageCubit, LanguageState>(
        //   builder: (context, langState) {
        //     return MaterialApp(
        //       localizationsDelegates: AppLocalizations.localizationsDelegates,
        //       supportedLocales: AppLocalizations.supportedLocales,

        //       locale: langState.locale.getLanguage(),

        //       debugShowCheckedModeBanner: false,
        //       onGenerateRoute: onGenerateRoute,
        //       title: 'Sakina App',
        //       theme: lightTheme(),
        //       darkTheme: darkTheme(),
        //       themeMode: themeState,
        //       initialRoute: AppRoutes.reminderView,
        //     );
        //   },
        // );
      },
    );
  }
}
