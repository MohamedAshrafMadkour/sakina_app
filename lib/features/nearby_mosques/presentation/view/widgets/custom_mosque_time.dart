import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomMosqueTime extends StatelessWidget {
  const CustomMosqueTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          Icons.schedule,
          color: isDark
              ? Color.fromRGBO(255, 255, 255, 0.6)
              : Color.fromRGBO(107, 107, 107, 1),
        ),
        const SizedBox(width: 8),
        Text(
          'الظهر - 12:30',
          textAlign: TextAlign.right,
          style: AppStyles.textRegular14(context).copyWith(
            height: 1.43,
          ),
        ),
      ],
    );
  }
}
