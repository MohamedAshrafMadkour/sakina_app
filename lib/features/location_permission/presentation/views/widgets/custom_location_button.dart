import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/core/utils/custom_snack_bar.dart';
import 'package:sakina_app/core/widgets/custom_button.dart';
import 'package:sakina_app/features/location_permission/presentation/manager/cubit/location_cubit.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class CustomLocationButton extends StatelessWidget {
  const CustomLocationButton({
    required this.locale,
    super.key,
  });

  final AppLocalizations locale;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationCubit, LocationState>(
      listener: (context, state) {
        if (state is LocationStateSuccess) {
          showCustomSnackBar(context, 'تم تحديد الموقع بنجاح');
        } else if (state is LocationStateFailure) {
          showCustomSnackBar(context, state.error);
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 50,
          child: CustomButton(
            isLoading: state is LocationStateLoading,
            style: AppStyles.textMedium18(context).copyWith(
              color: LightAppColors.whiteColor,
            ),
            title: locale.selectionLocationButtonText,
            onPressed: () {
              context.read<LocationCubit>().startLocationService();
            },
          ),
        );
      },
    );
  }
}
