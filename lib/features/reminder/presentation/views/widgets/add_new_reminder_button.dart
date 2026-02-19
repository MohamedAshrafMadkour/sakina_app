import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class AddNewReminderButton extends StatelessWidget {
  const AddNewReminderButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          left: 24,
          bottom: 24,
        ),
        decoration: ShapeDecoration(
          color: isDark
              ? const Color(0xFF242421) // Card Dark
              : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isDark
                  ? const Color(0x1AFFFFFF) // subtle border
                  : const Color(0x1E0D7E5E),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: isDark ? const Color(0xFF9E9E9B) : const Color(0xFF6B6B6B),
            ),
            Text(
              '  إضافة تذكير جديد',
              style: AppStyles.textRegular16(context).copyWith(
                color: isDark
                    ? const Color(0xFFF2F2F0)
                    : const Color(0xFF1A1A1A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
