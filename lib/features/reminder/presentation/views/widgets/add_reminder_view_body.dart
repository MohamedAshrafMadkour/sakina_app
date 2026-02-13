import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/chose_color_item.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/chose_color_list_view.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/chose_icon_grid_view.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/custom_text_field.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/morning_evening_dropdown.dart';
import 'package:sakina_app/features/reminder/presentation/views/widgets/repeted_everyday.dart';

class AddReminderViewBody extends StatelessWidget {
  const AddReminderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        CloseIcon(),
        SizedBox(
          height: 8,
        ),
        Text(
          'إضافة تذكير جديد',
          style: AppStyles.textSemiBold24(context),
        ),
        SizedBox(
          height: 24,
        ),
        LableText(
          text: 'عنوان التذكير',
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 52,
          child: CustomTextField(
            hint: '...مثال: صلاة الضحى، قراءة ورد',
          ),
        ),
        SizedBox(
          height: 24,
        ),
        LableText(
          text: 'وقت التذكير',
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 52,
          child: Row(
            children: const [
              Expanded(flex: 2, child: CustomTextField()),
              SizedBox(width: 8),
              Expanded(flex: 1, child: MorningEveningDropdown()),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        LableText(
          text: 'اختر الأيقونة',
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .122,
          child: ChoseIconGridView(),
        ),
        SizedBox(
          height: 20,
        ),
        LableText(
          text: 'اختر اللون',
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(height: 50, child: ChoseColorListView()),
        SizedBox(
          height: 24,
        ),
        RepetedEveryday(),
      ],
    );
  }
}

class LableText extends StatelessWidget {
  const LableText({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textMedium14(context),
    );
  }
}

class CloseIcon extends StatelessWidget {
  const CloseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.close,
        color: Color(0xff1A1A1A),
      ),
    );
  }
}
