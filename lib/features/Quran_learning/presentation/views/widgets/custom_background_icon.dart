import 'package:flutter/material.dart';

class CustomBackgroundIcon extends StatelessWidget {
  const CustomBackgroundIcon({
    super.key,
    this.icon,
  });
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFD4AF37),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33554400),
        ),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
