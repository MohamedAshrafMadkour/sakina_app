part of 'nearby_mosques_cubit.dart';

sealed class NearbyMosquesState extends Equatable {
  const NearbyMosquesState();

  @override
  List<Object> get props => [];
}

final class NearbyMosquesInitial extends NearbyMosquesState {}

final class NearbyMosquesLoading extends NearbyMosquesState {}

final class NearbyMosquesSuccess extends NearbyMosquesState {
  final List<MosquesModel> mosques;
  const NearbyMosquesSuccess({required this.mosques});
}

final class NearbyMosquesFailure extends NearbyMosquesState {
  final String errorMessage;
  const NearbyMosquesFailure({required this.errorMessage});
}
