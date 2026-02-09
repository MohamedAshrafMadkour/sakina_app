import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sakina_app/core/service/get_location_service.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_model/mosques_model.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_query_model.dart';
import 'package:sakina_app/features/nearby_mosques/domain/repo/nearby_mosques_repo.dart';

part 'nearby_mosques_state.dart';

class NearbyMosquesCubit extends Cubit<NearbyMosquesState> {
  NearbyMosquesCubit(this.nearbyMosquesRepo, this.locationService)
    : super(NearbyMosquesInitial()) {
    _init();
  }

  final NearbyMosquesRepo nearbyMosquesRepo;
  final LocationService locationService;
  StreamSubscription<Position>? _locationSubscription;

  Future<void> _init() async {
    emit(NearbyMosquesLoading());

    try {
      final currentPosition = await locationService.getCurrentPosition();
      if (currentPosition != null) {
        _onNewPosition(currentPosition);
      }

      _locationSubscription = locationService.locationStream.listen(
        _onNewPosition,
      );
    } catch (e) {
      emit(NearbyMosquesFailure(errorMessage: e.toString()));
    }
  }

  void _onNewPosition(Position position) {
    getNearbyMosques(
      mosquesQueryModel: MosquesQueryModel(
        lat: position.latitude,
        lng: position.longitude,
      ),
    );
  }

  Future<void> getNearbyMosques({
    required MosquesQueryModel mosquesQueryModel,
  }) async {
    emit(NearbyMosquesLoading());
    final result = await nearbyMosquesRepo.getNearbyMosques(
      mosquesQueryModel: mosquesQueryModel,
    );

    result.fold(
      (failure) =>
          emit(NearbyMosquesFailure(errorMessage: failure.errorMessage)),
      (mosques) => emit(NearbyMosquesSuccess(mosques: mosques)),
    );
  }

  @override
  Future<void> close() {
    _locationSubscription?.cancel();
    return super.close();
  }
}
