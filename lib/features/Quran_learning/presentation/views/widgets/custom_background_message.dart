import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomBackgroundMessage extends StatelessWidget {
  const CustomBackgroundMessage({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: [const Color(0xFFF4E5C2), const Color(0xFFE8D7B0)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: const Color(0xFFD4AF37),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: child,
    );
  }
}
