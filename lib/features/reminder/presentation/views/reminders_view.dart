import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/dark_app_colors.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_view_body.dart';

class RemindersView extends StatelessWidget {
  const RemindersView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ReminderViewBody(),
      ),
      backgroundColor: isDark
          ? const Color(0xFF1C1C1A)
          : const Color(0xFFF8F7F4),
    );
  }
}
