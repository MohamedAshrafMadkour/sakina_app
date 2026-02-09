part of 'qibla_cubit.dart';

abstract class QiblaState extends Equatable {
  const QiblaState();

  @override
  List<Object> get props => [];
}

class QiblaInitial extends QiblaState {}

class QiblaLoading extends QiblaState {}

class QiblaActivity extends QiblaState {
  final double rotation;
  const QiblaActivity({required this.rotation});

  @override
  List<Object> get props => [rotation];
}

class QiblaFailure extends QiblaState {
  final String message;
  const QiblaFailure(this.message);

  @override
  List<Object> get props => [message];
}
