import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/custom_imogi_icon.dart';

class AppbarHeader extends StatelessWidget {
  const AppbarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الادعية و الأذكار',
              style: AppStyles.textMedium24(context),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'حصن المسلم اليومي',
              style: AppStyles.textRegular14(context),
            ),
          ],
        ),
        Spacer(),
        customImogiIcon(),
      ],
    );
  }
}
