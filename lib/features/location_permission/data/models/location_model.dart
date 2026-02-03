import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_images/app_icons/app_icons.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class LocationModel {
  final String image;
  final String title;
  final String subTitle;

  LocationModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  static List<LocationModel> locationList({required BuildContext context}) {
    final locale = AppLocalizations.of(context)!;
    return [
      LocationModel(
        image: AppIcons.iconsSmallLocation,
        title: locale.firstLocationListTile,
        subTitle: locale.firstLocationListTileSubTitle,
      ),
      LocationModel(
        image: AppIcons.iconsExploring,
        title: locale.secondLocationListTile,
        subTitle: locale.secondLocationListTileSubTitle,
      ),
      LocationModel(
        image: AppIcons.iconsPrivacy,
        title: locale.thirdLocationListTile,
        subTitle: locale.thirdLocationListTileSubTitle,
      ),
    ];
  }
}
