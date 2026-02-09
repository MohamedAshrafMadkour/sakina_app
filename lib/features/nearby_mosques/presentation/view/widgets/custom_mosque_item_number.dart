import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/dark_app_colors.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomMosquesItemNumber extends StatelessWidget {
  const CustomMosquesItemNumber({
    required this.index,
    this.isDark = false,
    super.key,
  });

  final int index;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
        gradient: isDark
            ? null
            : const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  LightAppColors.greenColor0D7,
                  LightAppColors.primaryColor,
                ],
              ),
        color: isDark ? Color.fromRGBO(18, 48, 40, 1) : null,
        shape: const OvalBorder(),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: -2,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: -1,
          ),
        ],
      ),
      child: Center(
        child: Text(
          index.toString(),
          textAlign: TextAlign.right,
          style: AppStyles.textRegular18(context).copyWith(
            height: 1.56,
            color: isDark
                ? DarkAppColors.textPrimary
                : LightAppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
