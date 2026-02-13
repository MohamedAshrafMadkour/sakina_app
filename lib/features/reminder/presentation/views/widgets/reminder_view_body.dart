import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_routes.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/custom_background_message.dart';
import 'package:sakina_app/features/reminder/data/models/reminder_model.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/add_new_reminder_button.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/advice_message.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_appbar.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_item.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminders_list_view.dart';

class ReminderViewBody extends StatelessWidget {
  ReminderViewBody({super.key});
  List<ReminderModel> reminderList = [
    ReminderModel(
      isEnabled: true,
      title: 'صدقة يومية',
      time: '12:00 م',
      iconCode: Icons.favorite_outline.codePoint,
      colors: [const Color(0xFF0D7E5E), const Color(0xFF0A6349)],
    ),
    ReminderModel(
      isEnabled: true,
      title: 'صدقة يومية',
      time: '12:00 م',
      iconCode: Icons.favorite_outline.codePoint,
      colors: [const Color(0xFF0D7E5E), const Color(0xFF0A6349)],
    ),
    ReminderModel(
      isEnabled: false,
      title: 'صدقة يومية',
      time: '12:00 م',
      iconCode: Icons.favorite_outline.codePoint,
      colors: [const Color(0xFF0D7E5E), const Color(0xFF0A6349)],
    ),
    ReminderModel(
      isEnabled: false,
      title: 'صدقة يومية',
      time: '12:00 م',
      iconCode: Icons.favorite_outline.codePoint,
      colors: [const Color(0xFF0D7E5E), const Color(0xFF0A6349)],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReminderAppbar(),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  RemindersListView(
                    reminderItems: reminderList,
                  ),
                  AddNewReminderButton(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.addReminderView);
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomBackgroundMessage(
                    child: AdviceMessage(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
