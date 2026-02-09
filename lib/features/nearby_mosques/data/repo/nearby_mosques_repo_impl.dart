import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:sakina_app/core/error/failure.dart';
import 'package:sakina_app/core/service/api_service.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_model/mosques_model.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_query_model.dart';
import 'package:sakina_app/features/nearby_mosques/domain/repo/nearby_mosques_repo.dart';

class NearbyMosquesRepoImpl extends NearbyMosquesRepo {
  final ApiService apiService;

  NearbyMosquesRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<MosquesModel>>> getNearbyMosques({
    required MosquesQueryModel mosquesQueryModel,
  }) async {
    try {
      final query =
          '''
[out:json][timeout:25];
(
  node["amenity"="place_of_worship"]["religion"="muslim"](around:2000,${mosquesQueryModel.lat},${mosquesQueryModel.lng});
  way["amenity"="place_of_worship"]["religion"="muslim"](around:2000,${mosquesQueryModel.lat},${mosquesQueryModel.lng});
  relation["amenity"="place_of_worship"]["religion"="muslim"](around:2000,${mosquesQueryModel.lat},${mosquesQueryModel.lng});
);
out center;
''';

      final response = await apiService.post(
        endPoint: 'interpreter',
        data: {'data': query},
      );
      final List<MosquesModel> mosques = [];
      for (var mosque in response['elements']) {
        mosques.add(MosquesModel.fromJson(mosque));
      }
      log('mosques: $mosques');
      return Right(mosques);
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
