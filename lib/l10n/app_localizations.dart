import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('ur'),
    Locale('fr'),
  ];

  /// No description provided for @splashViewTitle.
  ///
  /// In en, this message translates to:
  /// **'Al-Mushaf Al-Sharif'**
  String get splashViewTitle;

  /// No description provided for @splashViewSubTitle.
  ///
  /// In en, this message translates to:
  /// **'﴿ Recite the Quran with measured recitation ﴾'**
  String get splashViewSubTitle;

  /// No description provided for @splashViewDesc.
  ///
  /// In en, this message translates to:
  /// **'Surah Al-Muzzammil - Verse 4'**
  String get splashViewDesc;

  /// No description provided for @firstOnBoardingTitle.
  ///
  /// In en, this message translates to:
  /// **'The Holy Quran'**
  String get firstOnBoardingTitle;

  /// No description provided for @firstOnBoardingSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Read the Quran in a clear font with beautiful design and listen to recitations'**
  String get firstOnBoardingSubTitle;

  /// No description provided for @secondOnBoardingTitle.
  ///
  /// In en, this message translates to:
  /// **'Prayer Times'**
  String get secondOnBoardingTitle;

  /// No description provided for @secondOnBoardingSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Accurate notifications for prayer times based on your location with adhan sound'**
  String get secondOnBoardingSubTitle;

  /// No description provided for @thirdOnBoardingTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Spiritual Companion'**
  String get thirdOnBoardingTitle;

  /// No description provided for @thirdOnBoardingSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily reminders, adhkar, tasbih, everything you need in your spiritual journey'**
  String get thirdOnBoardingSubTitle;

  /// No description provided for @skipText.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skipText;

  /// No description provided for @onBoardingButtonbuttonText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onBoardingButtonbuttonText;

  /// No description provided for @languageSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Language'**
  String get languageSelectionTitle;

  /// No description provided for @firstLanguage.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get firstLanguage;

  /// No description provided for @secondLanguage.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get secondLanguage;

  /// No description provided for @thirdLanguage.
  ///
  /// In en, this message translates to:
  /// **'Urdu'**
  String get thirdLanguage;

  /// No description provided for @fourthLanguage.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get fourthLanguage;

  /// No description provided for @identifyLocationTitle.
  ///
  /// In en, this message translates to:
  /// **'Location Permission'**
  String get identifyLocationTitle;

  /// No description provided for @identifyLocationSubTitle.
  ///
  /// In en, this message translates to:
  /// **'We need your location to calculate accurate prayer times and show nearby mosques'**
  String get identifyLocationSubTitle;

  /// No description provided for @firstLocationListTile.
  ///
  /// In en, this message translates to:
  /// **'Accurate Prayer Times'**
  String get firstLocationListTile;

  /// No description provided for @secondLocationListTile.
  ///
  /// In en, this message translates to:
  /// **'Nearby Mosques'**
  String get secondLocationListTile;

  /// No description provided for @thirdLocationListTile.
  ///
  /// In en, this message translates to:
  /// **'Protected Privacy'**
  String get thirdLocationListTile;

  /// No description provided for @firstLocationListTileSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Calculated accurately based on your location'**
  String get firstLocationListTileSubTitle;

  /// No description provided for @secondLocationListTileSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover mosques around you'**
  String get secondLocationListTileSubTitle;

  /// No description provided for @thirdLocationListTileSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Your data is safe and protected'**
  String get thirdLocationListTileSubTitle;

  /// No description provided for @selectionLocationButtonText.
  ///
  /// In en, this message translates to:
  /// **'Allow Location Access'**
  String get selectionLocationButtonText;

  /// No description provided for @selectionLocationSetting.
  ///
  /// In en, this message translates to:
  /// **'You can change this setting later from settings'**
  String get selectionLocationSetting;

  /// No description provided for @chooseLanguageSnackBar.
  ///
  /// In en, this message translates to:
  /// **'Please choose your language'**
  String get chooseLanguageSnackBar;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'fr', 'ur'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
