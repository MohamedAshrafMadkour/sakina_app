import 'package:flutter/material.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_appbar_title.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/quran_learning_view_header.dart';

class QuranLearningViewBody extends StatelessWidget {
  const QuranLearningViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuranLearningViewHeader(),
      ],
    );
  }
}
