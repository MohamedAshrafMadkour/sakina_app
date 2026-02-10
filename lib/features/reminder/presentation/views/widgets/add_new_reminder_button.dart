import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class AddNewReminderButton extends StatelessWidget {
  const AddNewReminderButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: const Color(0x1E0D7E5E),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: const Color(0xFF6B6B6B),
            ),
            Text(
              '  إضافة تذكير جديد',
              style: AppStyles.textRegular16(context),
            ),
          ],
        ),
      ),
    );
  }
}
