import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/features/splash/presentation/view/widgets/custom_circle_container.dart';
import 'package:sakina_app/features/splash/presentation/view/widgets/custom_splash_items.dart';
import 'package:sakina_app/features/splash/presentation/view/widgets/splash_background_container.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigationToNextPage();
    super.initState();
  }

  void navigationToNextPage() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.onBoardingView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SplashBackgroundContainer(),
        Positioned(
          top: 100,
          left: 30,
          child: CustomCircleContainer(),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 100,
          left: 100,
          child: CustomCircleContainer(),
        ),
        Positioned(
          bottom: 100,
          right: 30,
          child: CustomCircleContainer(),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          top: 0,
          child: CustomSplashItems(),
        ),
      ],
    );
  }
}
