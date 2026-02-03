import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.indent,
    this.endIndent,
    this.color,
  });
  final double? indent;
  final double? endIndent;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? LightAppColors.secondColor,
      thickness: 1,
      height: 1,
      indent: indent ?? MediaQuery.sizeOf(context).width * .35,
      endIndent: endIndent ?? MediaQuery.sizeOf(context).width * .35,
    );
  }
}
