import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomQiblaDirection extends StatelessWidget {
  const CustomQiblaDirection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'شمال شرق',
      textAlign: TextAlign.right,
      style: AppStyles.textRegular12(context).copyWith(
        height: 1.40,
      ),
    );
  }
}
