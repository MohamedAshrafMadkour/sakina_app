import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/extensions/context_size.dart';
import 'package:sakina_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/widgets/custom_on_boarding_button_navigation.dart';
import 'package:sakina_app/features/on_boarding/presentation/views/widgets/custom_on_boarding_page_view_item.dart';
import 'package:sakina_app/features/splash/presentation/view/widgets/custom_circle_container.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  ValueNotifier<int> currentIndexNotifier = ValueNotifier(0);
  PageController pageController = PageController();
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    currentIndexNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -100,
          right: -100,
          child: CustomCircleContainer(
            color: LightAppColors.primaryColor,
            width: MediaQuery.sizeOf(context).width * .8,
            height: MediaQuery.sizeOf(context).height * .3,
            opacity: .09,
            borderWidth: 3,
          ),
        ),
        Positioned(
          top: 0,
          right: 30,
          left: 30,
          bottom: 0,
          child: CustomCircleContainer(
            color: LightAppColors.primaryColor,
            width: MediaQuery.sizeOf(context).width * .8,
            height: MediaQuery.sizeOf(context).height * .3,
            opacity: .09,
            borderWidth: 3,
          ),
        ),
        Positioned(
          bottom: -100,
          left: -100,
          child: CustomCircleContainer(
            width: MediaQuery.sizeOf(context).width * .8,
            height: MediaQuery.sizeOf(context).height * .3,
            opacity: .09,
            borderWidth: 3,
          ),
        ),
        Positioned(
          top: context.uiHeight * .25,
          left: 24,
          right: 24,
          height: context.uiHeight * .55,
          child: Column(
            children: [
              SizedBox(
                height: context.uiHeight * .35,
                child: PageView.builder(
                  controller: pageController,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: OnBoardingModel.onBoardingList(
                    context: context,
                  ).length,
                  itemBuilder: (context, index) {
                    return CustomOnBoardingPageViewItem(
                      onBoardingModel: OnBoardingModel.onBoardingList(
                        context: context,
                      )[index],
                    );
                  },
                  onPageChanged: (index) {
                    currentIndexNotifier.value = index;
                  },
                ),
              ),

              CustomDotsIndicator(
                currentIndex: currentIndexNotifier,
              ),
            ],
          ),
        ),

        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: CustomOnBoardingButtonNavigation(
            pageController: pageController,
            value: currentIndexNotifier,
          ),
        ),
      ],
    );
  }
}
