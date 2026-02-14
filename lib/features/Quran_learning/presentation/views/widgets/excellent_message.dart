import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_background_icon.dart';

class ExcellentMessage extends StatelessWidget {
  const ExcellentMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBackgroundIcon(
          icon: Icons.star,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'أحسنت!',
          style: AppStyles.textMedium18(
            context,
          ).copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'لقد أكملت 23 درسًا هذا الشهر. استمر في التعلم لتحقيق أهدافك.',
          style: AppStyles.textRegular14(context).copyWith(
            color: const Color(0xFF6B6B6B),
          ),
        ),
      ],
    );
  }
}
