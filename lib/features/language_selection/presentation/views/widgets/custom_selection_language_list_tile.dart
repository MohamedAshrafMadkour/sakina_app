import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/core/enum/language_enum.dart';
import 'package:sakina_app/core/manager/language_cubit/language_cubit.dart';
import 'package:sakina_app/features/language_selection/presentation/views/widgets/custom_check_box.dart';

class CustomSelectionLanguageListTile extends StatelessWidget {
  const CustomSelectionLanguageListTile({
    required this.language,
    super.key,
  });

  final AppLanguage language;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        final bool isSelected = state.locale == language;
        return Card(
          color: LightAppColors.whiteColor,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: isSelected
                  ? LightAppColors.primaryColor
                  : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: ListTile(
            onTap: () {
              context.read<LanguageCubit>().changeLanguage(language);
            },
            leading: SizedBox(
              width: 30,
              height: 25,
              child: CountryFlag.fromCountryCode(
                getCountryCode(language),
              ),
            ),
            title: Text(
              getLanguageMap(context: context)[language.name]!,
              style: AppStyles.textMedium20(
                context,
              ).copyWith(color: LightAppColors.blackColor1A),
            ),
            subtitle: Text(
              getLanguageMap(context: context)[language.name]!,
              style: AppStyles.textRegular14(context).copyWith(
                color: LightAppColors.greyColor6B,
                height: 1.43,
              ),
            ),
            trailing: CustomCheckBox(
              isSelected: isSelected,
            ),
          ),
        );
      },
    );
  }
}
