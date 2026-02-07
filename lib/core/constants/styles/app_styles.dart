import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/size_config.dart';

abstract class AppStyles {
  static TextStyle textMedium36(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontWeight: FontWeight.w500,
      height: 1.11,
      letterSpacing: 0.90,
    );
  }

  static TextStyle textRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      height: 1.33,
      color: Colors.white,
    );
  }

  static TextStyle textMedium30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.w500,
      height: 1.20,
    );
  }

  static TextStyle textMedium18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
      height: 1.56,
      color: Colors.white,
    );
  }

  static TextStyle textMedium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      height: 1.43,
      color: const Color(0xFF6B6B6B),
    );
  }

  static TextStyle textMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      height: 1.50,
    );
  }

  static TextStyle textMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      height: 1.40,
    );
  }

  static TextStyle textMedium24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w500,
      height: 1.40,
      color: Colors.white,
    );
  }

  static TextStyle textRegular20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Amiri',
      fontWeight: FontWeight.w400,
      height: 2,
    );
  }

  static TextStyle textRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      height: 1.43,
      color: Colors.white,
    );
  }

  static TextStyle textRegular24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w400,
      height: 1.43,
      color: Colors.white,
    );
  }

  static TextStyle textRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF6B6B6B),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      height: 1.50,
    );
  }

  static TextStyle textRegular18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w400,
      height: 1.63,
    );
  }

  static TextStyle imogiStyle(BuildContext context) {
    return TextStyle(
      fontSize: 25,
    );
  }

  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveSize = scaleFactor * fontSize;

    final double lowerFont = fontSize * .8;
    final double upperFont = fontSize * 1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  static double getScaleFactor(context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tablet) {
      return width / 1100;
    } else if (width < SizeConfig.desktop) {
      return width / 1300;
    } else {
      return width / 1700;
    }
  }
}
