import 'dart:async';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math';

class QiblaService {
  static const double _kaabaLat = 21.4225;
  static const double _kaabaLng = 39.8262;

  Stream<double> getCompassDirection() {
    return FlutterCompass.events!
        .where((heading) => heading.heading != null)
        .map((heading) => heading.heading!);
  }

  double bearingToKaaba({double userLat = 30.0444, double userLng = 31.2357}) {
    final lat1 = _degToRad(userLat);
    final lon1 = _degToRad(userLng);
    final lat2 = _degToRad(_kaabaLat);
    final lon2 = _degToRad(_kaabaLng);

    final dLon = lon2 - lon1;

    final y = sin(dLon);
    final x = cos(lat1) * tan(lat2) - sin(lat1) * cos(dLon);

    final brng = atan2(y, x);
    return (_radToDeg(brng) + 360) % 360;
  }

  double _degToRad(double deg) => deg * pi / 180;
  double _radToDeg(double rad) => rad * 180 / pi;
}
