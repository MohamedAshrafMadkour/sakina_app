import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.hint, super.key, this.onSubmitted});
  final String? hint;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hint,
        hintTextDirection: TextDirection.ltr,
        hintStyle: AppStyles.textRegular14(context).copyWith(
          color: const Color(0xFF6B6B6B),
        ),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
      ),
    );
  }
}
