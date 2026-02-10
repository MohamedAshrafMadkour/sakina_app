import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/core/constants/app_images/app_icons/app_icons.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/reminder/data/models/reminder_model.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_item_icon.dart';

class ReminderItem extends StatefulWidget {
  ReminderItem({required this.reminderModel, super.key});
  final ReminderModel reminderModel;
  @override
  State<ReminderItem> createState() => _ReminderItemState();
}

class _ReminderItemState extends State<ReminderItem> {
  bool isEnabled = true;

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
              width: 1,
              color: const Color(0x1E0D7E5E),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ReminderItemIcon(
              icon: widget.reminderModel.icon,
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
              onChanged: (val) {
                setState(() {
                  widget.reminderModel.isEnabled = val;
                });
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

  const CustomReminderSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 48,
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
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,

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
