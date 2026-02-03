import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/app_images/app_icons/app_icons.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String desc;
  final List<Color> colors;
  OnBoardingModel({
    required this.colors,
    required this.image,
    required this.title,
    required this.desc,
  });
  static List<OnBoardingModel> onBoardingList({required BuildContext context}) {
    final locale = AppLocalizations.of(context)!;
    return [
      OnBoardingModel(
        image: AppIcons.iconsBook,
        title: locale.firstOnBoardingTitle,
        desc: locale.firstOnBoardingSubTitle,
        colors: [
          LightAppColors.greenColor0D7,
          LightAppColors.primaryColor,
        ],
      ),
      OnBoardingModel(
        image: AppIcons.iconsBook,
        title: locale.secondOnBoardingTitle,
        desc: locale.secondOnBoardingSubTitle,
        colors: [
          LightAppColors.secondColor,
          LightAppColors.amberColorB8,
        ],
      ),
      OnBoardingModel(
        image: AppIcons.iconsBook,
        title: locale.thirdOnBoardingTitle,
        desc: locale.thirdOnBoardingSubTitle,
        colors: [
          LightAppColors.greenColor0D7,
          LightAppColors.primaryColor,
        ],
      ),
    ];
  }
}
