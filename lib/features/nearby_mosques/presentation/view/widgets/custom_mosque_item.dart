import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/dark_app_colors.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/core/extensions/context_size.dart';
import 'package:sakina_app/features/nearby_mosques/data/models/mosques_model/mosques_model.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/custom_mosque_address.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/custom_mosque_distance.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/custom_mosque_item_number.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/custom_mosque_name.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/custom_mosque_time.dart';
import 'package:sakina_app/features/splash/presentation/view/widgets/custom_divider.dart';

class CustomMosqueItem extends StatelessWidget {
  const CustomMosqueItem({
    required this.index,
    required this.mosqueModel,
    super.key,
  });
  final MosquesModel mosqueModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.tasbihView),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: isDark ? Color.fromRGBO(22, 32, 29, 1) : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isDark
                    ? Color.fromRGBO(255, 255, 255, 0.12)
                    : Color.fromRGBO(13, 126, 94, 0.12),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomMosquesItemNumber(index: index, isDark: isDark),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomMosqueName(
                          mosqueName:
                              mosqueModel.tags?.name ?? 'مسجد غير معروف',
                        ),
                        CustomMosqueDistance(
                          mosqueModel: mosqueModel,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    CustomMosqueAddress(
                      mosque: mosqueModel,
                    ),
                    const SizedBox(height: 12),
                    Opacity(
                      opacity: .2,
                      child: CustomDivider(
                        color: isDark
                            ? DarkAppColors.textSecondary
                            : LightAppColors.greenColor0D7,
                        endIndent: context.uiWidth * .01,
                        indent: context.uiWidth * .01,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const CustomMosqueTime(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
