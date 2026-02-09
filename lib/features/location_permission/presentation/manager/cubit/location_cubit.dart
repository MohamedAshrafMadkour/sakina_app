import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:sakina_app/core/service/get_location_service.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit(this.locationService) : super(LocationStateInitial());
  final LocationService locationService;

  Future<void> startLocationService() async {
    emit(LocationStateLoading());
    final started = await locationService.startListening();
    if (!started) {
      emit(LocationStateFailure(error: 'GPS disabled or permission denied'));
      return;
    }
    emit(LocationStateSuccess());
  }
}
