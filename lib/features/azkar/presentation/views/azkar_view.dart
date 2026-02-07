import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/azkar_view_body.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7F4),

      body: AzkarViewBody(),
    );
  }
}
