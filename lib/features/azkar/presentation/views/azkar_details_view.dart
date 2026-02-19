import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/data/models/zekr_model.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/azkar_details_view_body.dart';

class AzkarDetailsView extends StatelessWidget {
  const AzkarDetailsView({required this.zekr, super.key});
  final List<ZekrModel> zekr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7F4),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: AzkarDetailsViewBody(
          azkar: zekr,
        ),
      ),
    );
  }
}
