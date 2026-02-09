import 'dart:async';
import 'dart:developer';

import 'package:geolocator/geolocator.dart';

class LocationService {
  LocationService._internal();
  static final LocationService _instance = LocationService._internal();
  factory LocationService() => _instance;

  final _locationController = StreamController<Position>.broadcast();
  StreamSubscription<Position>? _subscription;

  Stream<Position> get locationStream => _locationController.stream;

  Future<bool> _checkPermissions() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  Future<bool> startListening({int distanceFilter = 10}) async {
    final hasPermission = await _checkPermissions();
    if (!hasPermission) {
      return false;
    }

    _subscription =
        Geolocator.getPositionStream(
          locationSettings: LocationSettings(
            accuracy: LocationAccuracy.high,
            distanceFilter: distanceFilter,
          ),
        ).listen(
          (position) {
            _locationController.add(position);
            log('Location update: ${position.latitude}, ${position.longitude}');
          },
          onError: (error) {
            _locationController.addError(error);
          },
        );

    return true;
  }

  void stopListening() => _subscription?.cancel();

  void dispose() {
    _locationController.close();
    _subscription?.cancel();
  }

  Future<Position?> getCurrentPosition() async {
    final hasPermission = await _checkPermissions();
    if (!hasPermission) {
      return null;
    }

    return await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.high,
      ),
    );
  }
}
