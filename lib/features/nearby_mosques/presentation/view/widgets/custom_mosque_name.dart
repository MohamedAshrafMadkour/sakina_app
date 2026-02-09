import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomMosqueName extends StatelessWidget {
  const CustomMosqueName({
    required this.mosqueName,
    super.key,
  });
  final String mosqueName;
  @override
  Widget build(BuildContext context) {
    return Text(
      mosqueName,
      textAlign: TextAlign.right,
      style: AppStyles.textMedium20(context).copyWith(
        height: 1.40,
      ),
    );
  }
}
