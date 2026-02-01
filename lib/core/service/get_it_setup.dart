import 'package:get_it/get_it.dart';
import 'package:sakina_app/core/cubits/theme_hydrated_cubit.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerFactory<ThemeCubit>(() => ThemeCubit());
}
