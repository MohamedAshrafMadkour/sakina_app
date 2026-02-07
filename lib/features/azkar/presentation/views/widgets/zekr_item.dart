import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/zekr_item_header.dart';

class ZekrItem extends StatelessWidget {
  const ZekrItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: Colors.black.withValues(alpha: 0),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        children: [
          ZekrItemHeader(),
        ],
      ),
    );
  }
}
