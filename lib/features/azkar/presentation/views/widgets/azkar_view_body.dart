import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/custom_appbar.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAppbar(),
      ],
    );
  }
}
