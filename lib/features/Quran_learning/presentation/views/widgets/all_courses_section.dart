import 'package:flutter/material.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/all_courses_item.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_title.dart';

class AllCoursesSection extends StatelessWidget {
  const AllCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(title: 'جميع الدورات'),
        SizedBox(
          height: 16,
        ),
        AllCoursesItem(),
      ],
    );
  }
}
