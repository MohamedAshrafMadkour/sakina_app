import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sakina_app/core/service/qibla_service/qibla_service.dart';

part 'qibla_state.dart';

class QiblaCubit extends Cubit<QiblaState> {
  final QiblaService service;
  StreamSubscription<double>? _sub;

  QiblaCubit({required this.service}) : super(QiblaInitial());

  void start() {
    emit(QiblaLoading());

    _sub = service.getCompassDirection().listen(
      (heading) {
        final qiblaAngle = service.bearingToKaaba();
        final rotation = qiblaAngle - heading;
        emit(QiblaActivity(rotation: rotation));
      },
      onError: (_) => emit(QiblaFailure('Sensor Error')),
    );
  }

  @override
  Future<void> close() {
    _sub?.cancel();
    return super.close();
  }
}
