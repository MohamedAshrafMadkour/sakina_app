import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sakina_app/core/error/location_error.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class LocationService {
  Future<Either<LocationFailure, Position>> getCurrentLocation({
    required BuildContext context,
  }) async {
    final locale = AppLocalizations.of(context)!;

    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left(
        LocationFailure(errorMessage: locale.locationServicesDisabled),
      );
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(
          LocationFailure(
            errorMessage: locale.locationPermissionsDenied,
          ),
        );
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return left(
        LocationFailure(
          errorMessage: locale.locationPermissionsDeniedForever,
        ),
      );
    }

    try {
      final position = await Geolocator.getCurrentPosition();
      log('Current location: $position');
      return right(position);
    } catch (_) {
      return left(
        LocationFailure(errorMessage: locale.failedToGetCurrentLocation),
      );
    }
  }
}
