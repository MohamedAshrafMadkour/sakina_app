import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class SaveReminderButtons extends StatelessWidget {
  const SaveReminderButtons({required this.onTap, super.key});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: const Color(0xFFF8F7F4),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: const Color(0x1E0D7E5E),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'إلغاء',
                style: AppStyles.textMedium14(context),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.50, 0.00),
                  end: Alignment(0.50, 1.00),
                  colors: const [Color(0xFF0D7E5E), Color(0xFF0A6349)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'حفظ التذكير',
                style: AppStyles.textMedium14(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
