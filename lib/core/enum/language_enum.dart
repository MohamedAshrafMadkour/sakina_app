import 'package:flutter/material.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

enum AppLanguage {
  ar,
  en,
  ur,
  fr,
}

Map<String, String> getLanguageMap({required BuildContext context}) {
  final locale = AppLocalizations.of(context)!;
  return {
    'ar': locale.firstLanguage,
    'en': locale.secondLanguage,
    'ur': locale.thirdLanguage,
    'fr': locale.fourthLanguage,
  };
}

String getCountryCode(AppLanguage language) {
  switch (language) {
    case AppLanguage.ar:
      return 'SA';
    case AppLanguage.en:
      return 'US';
    case AppLanguage.fr:
      return 'FR';
    case AppLanguage.ur:
      return 'PK';
  }
}
