import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/app_images/app_icons/app_icons.dart';

class CustomQiblaItemIcon extends StatelessWidget {
  const CustomQiblaItemIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isDark
              ? [
                  const Color(0xFF0D7E5E),
                  const Color(0xFF1FA37A),
                ] // Dark gradient
              : [
                  LightAppColors.greenColor0D7,
                  LightAppColors.primaryColor,
                ], // Light gradient
        ),
        shape: const OvalBorder(),
        shadows: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.4)
                : const Color(0x19000000),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          AppIcons.iconsTelegram,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
