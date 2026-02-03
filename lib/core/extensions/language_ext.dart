import 'package:flutter/material.dart';
import 'package:sakina_app/core/enum/language_enum.dart';

extension AppLanguageExt on AppLanguage {
  Locale getLanguage() {
    switch (this) {
      case AppLanguage.ar:
        return const Locale('ar');
      case AppLanguage.en:
        return const Locale('en');
      case AppLanguage.fr:
        return const Locale('fr');
      case AppLanguage.ur:
        return const Locale('ur');
    }
  }

  String getCode() {
    return getLanguage().languageCode;
  }
}
