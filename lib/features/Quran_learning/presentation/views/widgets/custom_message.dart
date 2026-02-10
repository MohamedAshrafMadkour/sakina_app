import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: [const Color(0xFFF4E5C2), const Color(0xFFE8D7B0)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: const Color(0xFFD4AF37),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: const Color(0xFFD4AF37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(33554400),
              ),
            ),
            child: Icon(
              Icons.star,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "أحسنت!",
            style: AppStyles.textMedium18(
              context,
            ).copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "لقد أكملت 23 درسًا هذا الشهر. استمر في التعلم لتحقيق أهدافك.",
            style: AppStyles.textRegular14(context).copyWith(
              color: const Color(0xFF6B6B6B),
            ),
          ),
        ],
      ),
    );
  }
}
