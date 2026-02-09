import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_slider.dart';

class QuranLearningViewHeaderBody extends StatelessWidget {
  const QuranLearningViewHeaderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 10,
            offset: Offset(0, 8),
            spreadRadius: -6,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, 20),
            spreadRadius: -5,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "تقدمك هذا الأسبوع",
                    style:
                        AppStyles.textRegular14(
                          context,
                        ).copyWith(
                          color: const Color(
                            0xFF6B6B6B,
                          ),
                        ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "5 دروس",
                    style: AppStyles.textMedium24(
                      context,
                    ).copyWith(color: const Color(0xFF1A1A1A), height: 1.33),
                  ),
                ],
              ),

              Column(
                children: [
                  Text(
                    "78%",
                    style: AppStyles.textRegular30(context),
                  ),
                  Text(
                    "مكتمل",
                    style: AppStyles.textRegular14(context).copyWith(
                      color: const Color(0xFF6B6B6B),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CustomSlider(),
        ],
      ),
    );
  }
}
