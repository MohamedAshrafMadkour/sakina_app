import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/custom_fav_icon.dart';

class ZekrItemHeader extends StatelessWidget {
  const ZekrItemHeader({required this.count, required this.zekr, super.key});
  final int count;
  final String zekr;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, 0.00),
              end: Alignment(1.00, 1.00),
              colors: const [Color(0xFFFF8803), Color(0xFFFD9900)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            '$count',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: Text(
            '$zekr',
            maxLines: 2,
            textAlign: TextAlign.right,
            overflow: TextOverflow.clip,
            style: AppStyles.textRegular16(context),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        CustomFavIcon(iconSize: 20),
      ],
    );
  }
}
