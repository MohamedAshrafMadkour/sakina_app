import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomQiblaDistanceNum extends StatelessWidget {
  const CustomQiblaDistanceNum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '٢٬٤٢٥ كم',
      textAlign: TextAlign.right,
      style: AppStyles.textRegular18(context).copyWith(
        height: 1.56,
      ),
    );
  }
}
