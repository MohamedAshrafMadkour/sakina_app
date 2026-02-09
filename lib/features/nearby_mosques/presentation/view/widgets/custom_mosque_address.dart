import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_model/mosques_model.dart';

class CustomMosqueAddress extends StatelessWidget {
  const CustomMosqueAddress({
    required this.mosque,
    super.key,
  });

  final MosquesModel mosque;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: isDark
              ? Color.fromRGBO(255, 255, 255, 0.6)
              : Color.fromRGBO(107, 107, 107, 1),
          size: 18,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            mosque.address ?? 'العنوان غير متوفر',
            textAlign: TextAlign.right,
            style: AppStyles.textRegular14(context).copyWith(
              height: 1.43,
            ),
          ),
        ),
      ],
    );
  }
}
