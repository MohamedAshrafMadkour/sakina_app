import 'package:flutter/material.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/quran_learning_view_body.dart';

class QuranLearningView extends StatelessWidget {
  const QuranLearningView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7F4),
      body: QuranLearningViewBody(),
    );
  }
}
