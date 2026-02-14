import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakina_app/core/constants/app_images/app_icons/app_icons.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/core/service/data_base_service.dart';
import 'package:sakina_app/core/service/notification_service.dart';
import 'package:sakina_app/features/reminder/data/models/reminder_model.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_item_icon.dart';

class ReminderItem extends StatefulWidget {
  const ReminderItem({required this.reminderModel, super.key});
  final ReminderModel reminderModel;
  @override
  State<ReminderItem> createState() => _ReminderItemState();
}

class _ReminderItemState extends State<ReminderItem> {
  bool isEnabled = true;
  DateTime convertTimeStringToDateTime(String time) {
    final now = DateTime.now();

    final parts = time.split(":");

    final hour = int.parse(parts[0]);
    final minute = int.parse(parts[1]);

    DateTime scheduled = DateTime(
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );

    if (scheduled.isBefore(now)) {
      scheduled = scheduled.add(const Duration(days: 1));
    }

    return scheduled;
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.reminderModel.isEnabled ? 1 : 0.6,
      child: Container(
        width: double.infinity,

        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: const Color(0x1E0D7E5E),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            ReminderItemIcon(
              icon: widget.reminderModel.icon,
              colorsList: widget.reminderModel.colors,
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.reminderModel.title,
                  style: AppStyles.textMedium18(
                    context,
                  ).copyWith(color: Color(0xFF1A1A1A)),
                ),

                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.iconsTime,
                      color: const Color(0xFF6B6B6B),
                      height: 12,
                    ),
                    Text(
                      '  ${widget.reminderModel.time}',
                      style: AppStyles.textRegular14(
                        context,
                      ).copyWith(color: Color(0xFF6B6B6B)),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            CustomReminderSwitch(
              value: widget.reminderModel.isEnabled,
              rtl: true,
              width: 50,

              onChanged: (value) async {
                final int id = widget.reminderModel.id!;

                // 👇 نحدث الـ UI فورًا
                setState(() {
                  widget.reminderModel.isEnabled = value;
                });

                // 👇 نحدث الـ DB
                await DataBaseService.instance.updateReminderEnabled(
                  id: id,
                  isEnabled: value,
                );

                if (!value) {
                  // 🔴 لو قفله → نلغي الإشعار
                  await NotificationService
                      .instance
                      .flutterLocalNotificationsPlugin
                      .cancel(id: id);
                } else {
                  // 🟢 لو فتحه → نعمل schedule من جديد

                  final scheduledTime = convertTimeStringToDateTime(
                    widget.reminderModel.time,
                  );

                  await NotificationService.instance.scheduleNotification(
                    id: id,
                    title: widget.reminderModel.title,
                    body: "حان وقت التذكير",
                    scheduledTime: scheduledTime,
                    repeatedEveryday: widget.reminderModel.repeatedEveryday,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomReminderSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final bool rtl;

  const CustomReminderSwitch({
    required this.rtl,
    required this.width,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: width,
        height: 30,
        padding: const EdgeInsets.all(3),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

          // اللون
          color: value
              ? const Color(0xFF0D7E5E) // ON
              : const Color(0xFFF5F5F5), // OFF
          // Shadow
          boxShadow: value
              ? [] // مفيش shadow وهو شغال
              : [
                  // شبه inner shadow
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                    spreadRadius: -2,
                  ),
                ],
        ),

        child: Align(
          alignment: ((rtl) ? value : !value)
              ? Alignment.centerRight
              : Alignment.centerLeft,

          child: Container(
            width: 20,
            height: 20,

            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
