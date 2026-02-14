import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/reminder_item_icon.dart';

class ReminderReview extends StatelessWidget {
  const ReminderReview({
    required this.icon,
    required this.time,
    required this.title,
    required this.colors,
    super.key,
  });
  final String title, time;
  final List<Color> colors;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: const [Color(0xFFE8F5F1), Color(0xFFF4E5C2)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: const Color(0x4C0C7E5E),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'معاينة التذكير',
            style: AppStyles.textRegular12(context).copyWith(
              color: const Color(0xFF6B6B6B),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReminderItemIcon(
                colorsList: colors,
                icon: icon,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppStyles.textRegular16(
                        context,
                      ).copyWith(height: 1.25),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '$time ',
                          style: AppStyles.textRegular12(context).copyWith(
                            color: const Color(0xFF6B6B6B),
                          ),
                        ),
                        Icon(
                          Icons.alarm,
                          size: 12,
                          color: const Color(0xFF6B6B6B),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
