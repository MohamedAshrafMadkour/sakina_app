import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/back_row.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/custom_appbar.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/zekr_item.dart';

class AzkarDetailsViewBody extends StatelessWidget {
  const AzkarDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          sizedBox: false,
        ),
        SizedBox(
          height: 10,
        ),
        BackRow(),
        ZekrItem(),
      ],
    );
  }
}
