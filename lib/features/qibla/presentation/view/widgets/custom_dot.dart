import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, this.isDark = false});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isDark ? const Color(0xFF1FA37A) : const Color(0xFF0D7E5E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
