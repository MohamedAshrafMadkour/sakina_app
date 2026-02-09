import 'package:flutter/material.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_appbar_title.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/quran_learning_view_header_body.dart';

class QuranLearningViewHeader extends StatelessWidget {
  const QuranLearningViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: const [Color(0xFF0D7E5E), Color(0xFF0A6349)],
        ),
      ),
      child: Column(
        children: const [
          SizedBox(
            height: 18,
          ),
          CustomAppbarTitle(title: 'تعليم القرآن'),
          SizedBox(
            height: 32,
          ),
          QuranLearningViewHeaderBody(),
        ],
      ),
    );
  }
}
