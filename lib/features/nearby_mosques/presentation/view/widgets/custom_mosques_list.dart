import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/loading/mosques_shimmer.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/manager/nearby_mosques_cubit/nearby_mosques_cubit.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/custom_mosque_item.dart';

class CustomMosquesList extends StatelessWidget {
  const CustomMosquesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NearbyMosquesCubit, NearbyMosquesState>(
      builder: (context, state) {
        if (state is NearbyMosquesSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                  left: 16,
                  right: 16,
                ),
                child: CustomMosqueItem(
                  mosqueModel: state.mosques[index],
                  index: index + 1,
                ),
              ),
              childCount: state.mosques.length,
            ),
          );
        } else if (state is NearbyMosquesFailure) {
          log('error: ${state.errorMessage}');
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.errorMessage),
            ),
          );
        } else {
          return MosqueLoadingShimmer();
        }
      },
    );
  }
}
