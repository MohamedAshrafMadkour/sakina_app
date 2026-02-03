part of 'language_cubit.dart';

class LanguageState extends Equatable {
  final AppLanguage locale;

  const LanguageState({required this.locale});

  factory LanguageState.initial() =>
      const LanguageState(locale: AppLanguage.ar);

  LanguageState copyWith({AppLanguage? locale}) {
    return LanguageState(locale: locale ?? this.locale);
  }

  factory LanguageState.fromMap(Map<String, dynamic> map) {
    final code = map['locale'] as String? ?? 'ar';
    AppLanguage lang;
    switch (code) {
      case 'en':
        lang = AppLanguage.en;
        break;
      case 'fr':
        lang = AppLanguage.fr;
        break;
      case 'ur':
        lang = AppLanguage.ur;
        break;
      case 'ar':
      default:
        lang = AppLanguage.ar;
    }
    return LanguageState(locale: lang);
  }

  Map<String, dynamic> toMap() {
    return {'locale': locale.getCode()};
  }

  @override
  List<Object> get props => [locale];
}
