import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_model/mosques_model.dart';

class CustomMosqueDistance extends StatelessWidget {
  const CustomMosqueDistance({
    required this.mosqueModel,
    super.key,
  });
  final MosquesModel mosqueModel;

  @override
  Widget build(BuildContext context) {
    final distanceKm =
        calculateDistance(
          30.8751,
          30.8389,
          mosqueModel.lat ?? 0,
          mosqueModel.lon ?? 0,
        ) /
        1000;

    return Text(
      '${distanceKm.toStringAsFixed(2)} كم',
      style: AppStyles.textRegular14(context).copyWith(
        height: 1.43,
      ),
    );
  }

  double calculateDistance(
    double userLat,
    double userLng,
    double mosqueLat,
    double mosqueLng,
  ) {
    return Geolocator.distanceBetween(userLat, userLng, mosqueLat, mosqueLng);
  }
}
