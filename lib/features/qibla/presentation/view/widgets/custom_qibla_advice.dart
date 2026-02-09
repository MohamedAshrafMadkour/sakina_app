import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomQiblaAdvice extends StatelessWidget {
  const CustomQiblaAdvice({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            gradient: isDark
                ? LinearGradient(
                    colors: const [
                      Color.fromRGBO(
                        22,
                        38,
                        34,
                        0.5,
                      ),

                      Color.fromRGBO(
                        22,
                        38,
                        34,
                        0.0,
                      ),
                    ],
                  )
                : LinearGradient(
                    colors: [
                      LightAppColors.blackColor33,
                      Colors.black.withOpacity(0.0),
                    ],
                  ),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isDark
                    ? Color.fromRGBO(
                        39,
                        69,
                        61,
                        0.5,
                      )
                    : LightAppColors.blackColor33,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'اجعل هاتفك مستوياً للحصول على أفضل دقة 💡',
              textAlign: TextAlign.center,
              style: AppStyles.textRegular12(context).copyWith(
                height: 1.33,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
