import 'package:get_it/get_it.dart';
import 'package:sakina_app/core/manager/theme_hydrated_cubit.dart';
import 'package:sakina_app/core/service/get_location_service.dart';
import 'package:sakina_app/features/location_permission/presentation/manager/cubit/location_cubit.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerFactory<ThemeCubit>(() => ThemeCubit());

  getIt.registerLazySingleton(() => LocationService());
  getIt.registerFactory<LocationCubit>(
    () => LocationCubit(
      getIt.get<LocationService>(),
    ),
  );
}
