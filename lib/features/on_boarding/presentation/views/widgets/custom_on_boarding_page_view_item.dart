import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/widgets/custom_on_boarding_image_container.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/widgets/custom_on_boarding_divider.dart';

class CustomOnBoardingPageViewItem extends StatelessWidget {
  const CustomOnBoardingPageViewItem({
    required this.onBoardingModel,
    super.key,
  });
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomONBoardingImageContainer(onBoardingModel: onBoardingModel),
        const SizedBox(height: 48),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              onBoardingModel.title,
              textAlign: TextAlign.center,
              style: AppStyles.textMedium36(context).copyWith(
                letterSpacing: -.90,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        CustomOnBoardingDivider(),
        const SizedBox(height: 28),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              onBoardingModel.desc,
              textAlign: TextAlign.center,
              style: AppStyles.textRegular18(
                context,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
