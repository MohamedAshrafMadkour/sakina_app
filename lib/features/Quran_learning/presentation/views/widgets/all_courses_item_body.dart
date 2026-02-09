import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sakina_app/core/constants/app_images/app_icons/app_icons.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_slider.dart';

class AllCoursesItemBody extends StatelessWidget {
  const AllCoursesItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: ShapeDecoration(
            color: const Color(0x190D7E5E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Text(
            'تجويد',
            style: AppStyles.textRegular12(context).copyWith(
              color: const Color(0xFF0D7E5E),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'أحكام التجويد للمبتدئين',
          style: AppStyles.textMedium18(context).copyWith(
            color: const Color(0xFF1A1A1A),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.iconsTime,
              color: Color(0xFF6B6B6B),
              height: 14,
            ),

            Text(
              '  45 دقيقة',
              style: AppStyles.textRegular14(context).copyWith(
                color: const Color(0xFF6B6B6B),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              '12 درس',
              style: AppStyles.textRegular14(context).copyWith(
                color: const Color(0xFF6B6B6B),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '8 من 12 دروس',
              style: AppStyles.textRegular12(context).copyWith(
                color: const Color(0xFF1A1A1A),
              ),
            ),

            Text(
              '67%',
              style: AppStyles.textRegular12(context).copyWith(
                color: const Color(0xFF1A1A1A),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        CustomSlider(),
      ],
    );
  }
}
