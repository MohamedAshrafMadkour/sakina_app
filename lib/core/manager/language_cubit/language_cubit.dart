import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:sakina_app/core/enum/language_enum.dart';
import 'package:sakina_app/core/extensions/language_ext.dart';

part 'language_state.dart';

class LanguageCubit extends HydratedCubit<LanguageState> {
  LanguageCubit() : super(LanguageState(locale: AppLanguage.ar));

  void changeLanguage(AppLanguage language) {
    emit(state.copyWith(locale: language));
  }

  @override
  LanguageState? fromJson(Map<String, dynamic> json) {
    try {
      return LanguageState.fromMap(json);
    } catch (e) {
      return LanguageState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(LanguageState state) {
    return state.toMap();
  }
}
