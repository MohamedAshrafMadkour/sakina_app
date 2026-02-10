import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_background_icon.dart';

class AdviceMessage extends StatelessWidget {
  const AdviceMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBackgroundIcon(
          icon: Icons.lightbulb_outline,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "نصيحة",
                style: AppStyles.textMedium18(
                  context,
                ).copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'المداومة على الأذكار اليومية تجلب السكينة والطمأنينة للقلب. احرص على تفعيل التذكيرات لتبقى على اتصال دائم بالله.',
                textAlign: TextAlign.right,
                maxLines: 7,
                style:
                    AppStyles.textRegular14(
                      context,
                    ).copyWith(
                      color: Color(0xFF6B6B6B),
                      height: 1.63,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
