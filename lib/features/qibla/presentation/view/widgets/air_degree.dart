import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class AirDegree extends StatelessWidget {
  const AirDegree({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '٤٥°',
      style: AppStyles.textRegular24(context).copyWith(
        height: 1.40,
      ),
    );
  }
}
