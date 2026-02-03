import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';

class CustomArrow extends StatelessWidget {
  const CustomArrow({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF8F7F4),
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: const Color(0x1E0D7E5E),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: LightAppColors.blackColor1A,
            size: 16,
          ),
        ),
      ),
    );
  }
}
