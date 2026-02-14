import 'package:flutter/material.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_appbar_title.dart';

class ReminderAppbar extends StatelessWidget {
  const ReminderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: const [Color(0xFF0D7E5E), Color(0xFF0A6349)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppbarTitle(title: 'التذكيرات'),
          Container(
            padding: EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: Colors.white.withValues(alpha: 0.20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(33554400),
              ),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
