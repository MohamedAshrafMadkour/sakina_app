import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/location_permission/data/models/location_model.dart';

class CustomLocationListTile extends StatelessWidget {
  const CustomLocationListTile({
    required this.locationModel,
    super.key,
  });
  final LocationModel locationModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: LightAppColors.whiteColor,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 2,
          color: Colors.black.withValues(alpha: 0),
        ),
        borderRadius: BorderRadiusGeometry.circular(24),
      ),
      child: ListTile(
        leading: Container(
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, 0.00),
              end: Alignment(1.00, 1.00),
              colors: const [
                LightAppColors.blackColor190,
                LightAppColors.blackColor19D,
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              locationModel.image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text(
          locationModel.title,
          style: AppStyles.textMedium16(
            context,
          ).copyWith(color: LightAppColors.blackColor1A),
        ),
        subtitle: Text(
          locationModel.subTitle,
          style:
              AppStyles.textRegular12(
                context,
              ).copyWith(
                color: LightAppColors.greyColor6B,
              ),
        ),
      ),
    );
  }
}
