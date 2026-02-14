import 'package:flutter/material.dart';

class TimePickerField extends StatefulWidget {
  const TimePickerField({required this.onTimeSelected, super.key});
  final Function(TimeOfDay) onTimeSelected;
  @override
  State<TimePickerField> createState() => _TimePickerFieldState();
}

class _TimePickerFieldState extends State<TimePickerField> {
  TimeOfDay? selectedTime;

  Future<void> pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),

      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Color(0xFF0A6349),
            ),

            timePickerTheme: const TimePickerThemeData(
              dialHandColor: Color(0xFF0A6349),
              hourMinuteTextColor: Color(0xFF0A6349),
              hourMinuteColor: Color(0x140A6349),
              dayPeriodColor: Color(0x140A6349),
              dayPeriodTextColor: Color(0xFF0A6349),
            ),

            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF0A6349),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
      widget.onTimeSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedTime != null;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: pickTime,
        borderRadius: BorderRadius.circular(16),
        splashColor: const Color(0x220A6349),

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,

          height: 56,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),

            border: Border.all(
              color: isSelected
                  ? const Color(0xFF0A6349)
                  : const Color(0x1E0A6349),
              width: 1.5,
            ),

            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: const Color(0x220A6349),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
          ),

          child: Row(
            children: [
              Icon(
                Icons.access_time,
                color: isSelected ? const Color(0xFF0A6349) : Colors.grey,
              ),
              const SizedBox(width: 12),
              Text(
                selectedTime != null
                    ? selectedTime!.format(context)
                    : 'اختر الوقت',
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
