import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakina_app/features/on_boarding/data/models/on_boarding_model.dart';

class CustomONBoardingImageContainer extends StatelessWidget {
  const CustomONBoardingImageContainer({
    required this.onBoardingModel,
    super.key,
  });

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: onBoardingModel.colors,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 4,
            color: const Color(0x19FFFEFE),
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 50,
            offset: Offset(0, 25),
            spreadRadius: -12,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SvgPicture.asset(
          onBoardingModel.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
