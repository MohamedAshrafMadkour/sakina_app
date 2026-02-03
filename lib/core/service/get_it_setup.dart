import 'package:get_it/get_it.dart';
import 'package:sakina_app/core/manager/language_cubit/language_cubit.dart';
import 'package:sakina_app/core/manager/theme_hydrated_cubit.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerFactory<ThemeCubit>(() => ThemeCubit());
  getIt.registerFactory<LanguageCubit>(() => LanguageCubit());
}
