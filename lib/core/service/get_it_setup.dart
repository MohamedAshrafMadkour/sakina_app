import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sakina_app/core/manager/theme_hydrated_cubit.dart';
import 'package:sakina_app/core/service/api_service.dart';
import 'package:sakina_app/core/service/get_location_service.dart';
import 'package:sakina_app/features/location_permission/presentation/manager/cubit/location_cubit.dart';
import 'package:sakina_app/features/nearby_mosques/data/repo/nearby_mosques_repo_impl.dart';
import 'package:sakina_app/features/nearby_mosques/domain/repo/nearby_mosques_repo.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/manager/nearby_mosques_cubit/nearby_mosques_cubit.dart';
import 'package:sakina_app/features/tasbih/presentation/manager/tasbih_cubit.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerFactory<ThemeCubit>(() => ThemeCubit());

  getIt.registerLazySingleton(() => LocationService());
  getIt.registerFactory<LocationCubit>(
    () => LocationCubit(
      getIt.get<LocationService>(),
    ),
  );
  getIt.registerFactory<TasbihCubit>(() => TasbihCubit());
  getIt.registerLazySingleton(() => ApiService(dio: Dio()));
  getIt.registerSingleton<NearbyMosquesRepo>(
    NearbyMosquesRepoImpl(apiService: getIt.get<ApiService>()),
  );
  getIt.registerFactory(
    () => NearbyMosquesCubit(
      getIt.get<NearbyMosquesRepo>(),
      getIt.get<LocationService>(),
    ),
  );
}
