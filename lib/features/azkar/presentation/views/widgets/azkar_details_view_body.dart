import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/data/models/zekr_model.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/back_row.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/custom_appbar.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/zekr_list_view.dart';

class AzkarDetailsViewBody extends StatelessWidget {
  AzkarDetailsViewBody({super.key});
  final List<ZekrModel> azkar = [
    ZekrModel(
      count: 1,
      zekr:
          'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ',
      type1: 'رواه مسلم',
      type2: 'حفظ من شر اليوم',
    ),

    ZekrModel(
      count: 1,
      zekr:
          'اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ، وَإِلَيْكَ النُّشُورُ',
      type1: 'رواه الترمذي',
      type2: 'التوكل على الله',
    ),
    ZekrModel(
      count: 100,
      zekr: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
      type1: 'متفق عليه',
      type2: 'تُحَطّ خطاياه وإن كانت مثل زبد البحر',
    ),

    ZekrModel(
      count: 3,
      zekr:
          'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',

      type1: 'رواه الترمذي',
      type2: 'من قالها ثلاثاً لم يضره شيء',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          sizedBox: false,
        ),
        SizedBox(
          height: 10,
        ),
        BackRow(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ZekrListView(
              azkarList: azkar,
            ),
          ),
        ),
      ],
    );
  }
}
