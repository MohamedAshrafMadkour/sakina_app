import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class HadithMosqueItem extends StatelessWidget {
  const HadithMosqueItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        gradient: isDark
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: const [
                  Color.fromRGBO(28, 47, 42, 1),
                  Color.fromRGBO(22, 38, 34, 1),
                ],
              )
            : const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFF4E5C2), Color(0xFFE8D7B0)],
              ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: isDark
                ? Color.fromRGBO(13, 126, 94, 1)
                : const Color(0xFFD4AF37),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'حديث شريف',
              textAlign: TextAlign.center,
              style: AppStyles.textRegular14(context).copyWith(
                height: 1.43,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '"مَنْ غَدَا إِلَى الْمَسْجِدِ أَوْ رَاحَ، أَعَدَّ اللَّهُ لَهُ فِي الْجَنَّةِ نُزُلًا"',
              textAlign: TextAlign.center,
              style: AppStyles.textRegular18(context).copyWith(),
            ),
            const SizedBox(height: 8),
            Text(
              'رواه البخاري ومسلم',
              textAlign: TextAlign.center,
              style: AppStyles.textRegular12(context).copyWith(
                height: 1.33,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
