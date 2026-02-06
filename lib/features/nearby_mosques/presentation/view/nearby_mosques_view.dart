import 'package:flutter/material.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/nearby_mosques_body.dart';

class NearbyMosques extends StatelessWidget {
  const NearbyMosques({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NearbyMosquesBody(),
    );
  }
}
