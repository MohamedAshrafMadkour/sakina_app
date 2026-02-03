import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    required this.isSelected,
    super.key,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isSelected,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: LightAppColors.primaryColor,
          border: Border.all(
            color: LightAppColors.primaryColor,
            width: 2,
          ),
        ),
        child: Icon(
          Icons.check,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
