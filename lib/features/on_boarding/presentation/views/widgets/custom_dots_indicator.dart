import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/features/on_boarding/data/models/on_boarding_model.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    required this.currentIndex,
    super.key,
  });
  final ValueNotifier<int> currentIndex;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentIndex,
      builder: (context, value, child) {
        return DotsIndicator(
          dotsCount: OnBoardingModel.onBoardingList(context: context).length,
          position: value.toDouble(),
          decorator: DotsDecorator(
            color: LightAppColors.greyColorE8,
            activeColor: OnBoardingModel.onBoardingList(
              context: context,
            )[value].colors[0],
            size: const Size.square(8),
            activeSize: const Size(32, 8),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        );
      },
    );
  }
}
