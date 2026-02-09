import 'package:dartz/dartz.dart';
import 'package:sakina_app/core/error/failure.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_model/mosques_model.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_query_model.dart';

abstract class NearbyMosquesRepo {
  Future<Either<Failure, List<MosquesModel>>> getNearbyMosques({
    required MosquesQueryModel mosquesQueryModel,
  });
}
