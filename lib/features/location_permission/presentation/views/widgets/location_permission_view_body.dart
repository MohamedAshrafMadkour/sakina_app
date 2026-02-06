import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/app_images/app_icons/app_icons.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/core/utils/custom_snack_bar.dart';
import 'package:sakina_app/core/widgets/app_background.dart';
import 'package:sakina_app/core/widgets/custom_button.dart';
import 'package:sakina_app/core/widgets/custom_image_container.dart';
import 'package:sakina_app/features/location_permission/presentation/manager/cubit/location_cubit.dart';
import 'package:sakina_app/features/location_permission/presentation/views/widgets/custom_location_list_view.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class LocationPermissionViewBody extends StatelessWidget {
  const LocationPermissionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return AppBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomImageContainer(
              borderRadius: 32,
              padding: 28,
              image: AppIcons.iconsBigLocation,
            ),
            const SizedBox(height: 24),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                locale.identifyLocationTitle,
                textAlign: TextAlign.center,
                style:
                    AppStyles.textMedium30(
                      context,
                    ).copyWith(
                      color: LightAppColors.blackColor1A,
                    ),
              ),
            ),
            SizedBox(height: 8),
            Flexible(
              child: Text(
                locale.identifyLocationSubTitle,
                textAlign: TextAlign.center,
                style:
                    AppStyles.textRegular16(
                      context,
                    ).copyWith(
                      color: LightAppColors.greyColor6B,
                    ),
              ),
            ),
            SizedBox(height: 32),
            CustomLocationListView(),
            const SizedBox(height: 32),
            BlocConsumer<LocationCubit, LocationState>(
              listener: (context, state) {
                if (state is LocationStateSuccess) {
                  showCustomSnackBar(context, 'success');
                }
                if (state is LocationStateFailure) {
                  showCustomSnackBar(context, state.error, isError: true);
                }
              },
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: state is LocationStateLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: LightAppColors.primaryColor,
                          ),
                        )
                      : CustomButton(
                          style: AppStyles.textMedium18(context).copyWith(
                            color: LightAppColors.whiteColor,
                          ),
                          title: locale.selectionLocationButtonText,
                          onPressed: () {
                            BlocProvider.of<LocationCubit>(
                              context,
                            ).getLocation(
                              context: context,
                            );
                          },
                        ),
                );
              },
            ),
            const SizedBox(
              height: 26,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                locale.skipText,
                style: AppStyles.textMedium18(context).copyWith(
                  color: LightAppColors.greyColor6B,
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: .center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: SvgPicture.asset(
                    AppIcons.iconsPrivacy,
                    height: 8,
                    colorFilter: ColorFilter.mode(
                      LightAppColors.greyColor6B,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      locale.selectionLocationSetting,
                      textAlign: TextAlign.center,
                      style: AppStyles.textRegular12(context).copyWith(
                        color: LightAppColors.greyColor6B,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
