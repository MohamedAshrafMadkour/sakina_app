import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomQiblaDistanceName extends StatelessWidget {
  const CustomQiblaDistanceName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'المسافة إلى مكة',
      textAlign: TextAlign.right,
      style: AppStyles.textRegular14(context).copyWith(
        height: 1.40,
      ),
    );
  }
}
