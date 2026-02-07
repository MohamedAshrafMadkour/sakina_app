import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class ZekrItemBottom extends StatelessWidget {
  const ZekrItemBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .1209302325581395,
        ),
        Wrap(
          children: const [
            CustomTypeContainer(
              backgroundColor: Color(0xFFD4AF37),
              title: 'رواه مسلم',
            ),
            SizedBox(
              width: 8,
            ),
            CustomTypeContainer(
              backgroundColor: Colors.white,
              title: 'حفظ من شر اليوم',
              borderColor: Color(0x1E0D7E5E),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomTypeContainer extends StatelessWidget {
  const CustomTypeContainer({
    required this.backgroundColor,
    required this.title,
    this.borderColor,
    super.key,
  });
  final String title;
  final Color backgroundColor;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),

      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: borderColor ?? backgroundColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: AppStyles.textMedium14(context),
      ),
    );
  }
}
