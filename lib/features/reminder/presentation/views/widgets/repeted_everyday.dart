import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_item.dart';

class RepetedEveryday extends StatefulWidget {
  const RepetedEveryday({super.key});

  @override
  State<RepetedEveryday> createState() => _RepetedEverydayState();
}

class _RepetedEverydayState extends State<RepetedEveryday> {
  bool repeted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xFFE8E6E1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'تكرار يومي',
            style: AppStyles.textMedium14(
              context,
            ).copyWith(color: Color(0xFF1A1A1A), height: 1),
          ),
          CustomReminderSwitch(
            value: repeted,
            onChanged: (value) {
              repeted = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
