import 'package:flutter/widgets.dart';
import 'package:sakina_app/core/constants/styles/size_config.dart';

abstract class Styles {
  double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveSize = scaleFactor * fontSize;

    final double lowerFont = fontSize * .8;
    final double upperFont = fontSize * 1;
    return responsiveSize.clamp(lowerFont, upperFont);
  }

  double getScaleFactor(context) {
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
