import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/zekr_item.dart';

class ZekrListView extends StatelessWidget {
  const ZekrListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: ZekrItem(),
        );
      },
    );
  }
}
