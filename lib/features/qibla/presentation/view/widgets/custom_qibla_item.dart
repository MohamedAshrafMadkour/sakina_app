import 'package:flutter/material.dart';

import 'package:sakina_app/features/qibla/presentation/view/widgets/air_degree.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_direction.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_distance.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_distance_num.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_item_icon.dart';

class CustomQiblaItem extends StatelessWidget {
  const CustomQiblaItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: isDark ? const Color(0xFF162622) : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isDark ? const Color(0xFF27453D) : const Color(0x1E0D7E5E),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            BoxShadow(
              color: isDark
                  ? Color.fromRGBO(0, 0, 0, 0.3)
                  : const Color(0x19000000),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomQiblaItemIcon(),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomQiblaDistanceName(),
                      AirDegree(),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomQiblaDistanceNum(),
                      CustomQiblaDirection(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
