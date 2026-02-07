import 'package:flutter/material.dart';

class ZekrItemHeader extends StatelessWidget {
  const ZekrItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, 0.00),
              end: Alignment(1.00, 1.00),
              colors: [const Color(0xFFFF8803), const Color(0xFFFD9900)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            '1',
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
            'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ',
            maxLines: 2,
            textAlign: TextAlign.right,
            overflow: TextOverflow.clip,
          ),
        ),
      ],
    );
  }
}
