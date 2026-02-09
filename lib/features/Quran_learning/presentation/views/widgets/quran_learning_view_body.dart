import 'package:flutter/material.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/continue_learning_section.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/quran_learning_view_header.dart';

class QuranLearningViewBody extends StatelessWidget {
  const QuranLearningViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuranLearningViewHeader(),
        SizedBox(
          height: 24,
        ),
        ContinueLearningSection(),
      ],
    );
  }
}
