import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/core/widgets/custom_button.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class CustomOnBoardingNextButton extends StatelessWidget {
  const CustomOnBoardingNextButton({
    required this.value,
    required this.pageController,
    super.key,
  });

  final ValueNotifier<int> value;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return CustomButton(
      title: locale.onBoardingButtonbuttonText,
      onPressed: () {
        if (value.value == 2) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            AppRoutes.languageSelectionView,
            (route) => false,
          );
        } else {
          pageController.animateToPage(
            value.value + 1,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }
}
