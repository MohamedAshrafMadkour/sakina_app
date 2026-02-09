import 'package:geolocator/geolocator.dart';

class LocationPermissionService {
  Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  Future<LocationPermission> requestPermission() async {
    return await Geolocator.requestPermission();
  }

  Future<bool> isLocationAvailable() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }

  Future<void> openAppSetting() async {
    await Geolocator.openAppSettings();
  }
}
