import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/dark_app_colors.dart';

ThemeData darkTheme() {
  return ThemeData(
    fontFamily: 'Cairo',
    primaryColor: DarkAppColors.primaryColor,
    colorScheme: .fromSeed(seedColor: Colors.deepPurple),
  );
}
