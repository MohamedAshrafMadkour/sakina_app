import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/core/enum/language_enum.dart';
import 'package:sakina_app/core/extensions/context_size.dart';
import 'package:sakina_app/core/manager/language_cubit/language_cubit.dart';
import 'package:sakina_app/core/utils/custom_snack_bar.dart';
import 'package:sakina_app/core/widgets/app_background.dart';
import 'package:sakina_app/core/widgets/custom_button.dart';
import 'package:sakina_app/core/widgets/custom_image_container.dart';
import 'package:sakina_app/features/language_selection/presentation/views/widgets/custom_selection_language_list_tile.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class LanguageSelectionViewBody extends StatelessWidget {
  const LanguageSelectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const languages = AppLanguage.values;
    final locale = AppLocalizations.of(context)!;
    return AppBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomImageContainer(),
            const SizedBox(height: 24),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  locale.languageSelectionTitle,
                  textAlign: TextAlign.center,
                  style: AppStyles.textMedium30(
                    context,
                  ).copyWith(color: LightAppColors.blackColor1A),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Select Your Preferred Language',
                  textAlign: TextAlign.center,
                  style: AppStyles.textRegular16(
                    context,
                  ).copyWith(color: LightAppColors.greyColor6B),
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .47,
              child: Column(
                children: List.generate(languages.length, (index) {
                  final lang = languages[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: index != 3 ? 12 : 0),
                    child: CustomSelectionLanguageListTile(language: lang),
                  );
                }),
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomButton(
                borderRadius: 24,
                title: locale.onBoardingButtonbuttonText,
                style: AppStyles.textMedium18(
                  context,
                ).copyWith(color: LightAppColors.whiteColor),
                onPressed: () {
                  final cubit = context.read<LanguageCubit>();
                  final selectedLanguage = cubit.state.locale;

                  if (selectedLanguage == '') {
                    customSnackBar(
                      context,
                      locale.chooseLanguageSnackBar,
                      isError: true,
                    );
                  } else {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.locationPermissionView,
                      (route) => false,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
