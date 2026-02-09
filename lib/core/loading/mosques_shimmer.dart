import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';

class MosqueLoadingShimmer extends StatelessWidget {
  const MosqueLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Shimmer.fromColors(
              baseColor: LightAppColors.greyColor6B.withOpacity(0.3),
              highlightColor: LightAppColors.greyColor6B.withOpacity(0.1),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 14,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 150,
                          height: 14,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
