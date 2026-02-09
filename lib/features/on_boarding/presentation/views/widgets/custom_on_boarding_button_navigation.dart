import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/widgets/custom_arrow.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/widgets/custom_on_boarding_next_button.dart';
import 'package:sakina_app/features/splash/presentation/view/widgets/custom_divider.dart';
import 'package:sakina_app/l10n/app_localizations.dart';

class CustomOnBoardingButtonNavigation extends StatelessWidget {
  const CustomOnBoardingButtonNavigation({
    required this.pageController,
    required this.value,
    super.key,
  });
  final PageController pageController;
  final ValueNotifier<int> value;
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Column(
      children: [
        CustomDivider(
          indent: 0,
          endIndent: 0,
          color: Color(0x0F0D7D5D),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .35,
                    height: 50,
                    child: CustomOnBoardingNextButton(
                      value: value,
                      pageController: pageController,
                    ),
                  ),
                  SizedBox(width: 20),
                  CustomArrow(
                    onTap: () {
                      if (value.value != 0) {
                        pageController.animateToPage(
                          value.value - 1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        return;
                      }
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  locale.skipText,
                  style: AppStyles.textMedium16(
                    context,
                  ).copyWith(color: LightAppColors.greyColor6B),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
