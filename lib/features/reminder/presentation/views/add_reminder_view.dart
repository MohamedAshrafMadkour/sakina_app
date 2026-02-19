import 'package:flutter/material.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/add_reminder_view_body.dart';

class AddReminderView extends StatelessWidget {
  const AddReminderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: AddReminderViewBody(),
        ),
      ),
    );
  }
}
