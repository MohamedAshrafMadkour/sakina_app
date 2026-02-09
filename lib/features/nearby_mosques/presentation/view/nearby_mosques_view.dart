import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/service/get_it_setup.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_query_model.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/manager/nearby_mosques_cubit/nearby_mosques_cubit.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/nearby_mosques_body.dart';

class NearbyMosques extends StatelessWidget {
  const NearbyMosques({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<NearbyMosquesCubit>()
        ..getNearbyMosques(
          mosquesQueryModel: MosquesQueryModel(lat: 37.4219983, lng: -122.084),
        ),
      child: const Scaffold(
        body: NearbyMosquesBody(),
      ),
    );
  }
}
