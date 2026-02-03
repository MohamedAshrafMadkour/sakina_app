import 'package:flutter/material.dart';
import 'package:sakina_app/features/location_permission/presentation/views/widgets/location_permission_view_body.dart';

class LocationPermissionView extends StatelessWidget {
  const LocationPermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LocationPermissionViewBody(),
    );
  }
}
