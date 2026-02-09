import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_dot.dart';

class QiblaSuccess extends StatelessWidget {
  const QiblaSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        decoration: ShapeDecoration(
          gradient: isDark
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: const [
                    Color(0x191FA37A),
                    Color(0x7F0D7E5E),
                  ],
                )
              : const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0x190C7E5E), Color(0x7FE7F5F0)],
                ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isDark ? const Color(0x4C1FA37A) : const Color(0x4C0C7E5E),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDot(isDark: isDark),
              const SizedBox(width: 12),
              Text(
                'تم تحديد اتجاه القبلة بنجاح ✓',
                textAlign: TextAlign.right,
                style: AppStyles.textRegular14(context).copyWith(
                  height: 1.43,
                  color: isDark ? const Color(0xFFE6F4EF) : Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
