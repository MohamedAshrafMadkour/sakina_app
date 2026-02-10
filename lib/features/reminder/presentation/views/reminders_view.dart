import 'package:flutter/material.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_view_body.dart';

class RemindersView extends StatelessWidget {
  const RemindersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReminderViewBody(),
      backgroundColor: Color(0xffF8F7F4),
    );
  }
}
