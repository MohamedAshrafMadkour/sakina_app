import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/data/models/zekr_model.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/zekr_item_bottom.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/zekr_item_header.dart';

class ZekrItem extends StatelessWidget {
  const ZekrItem({required this.zekrModel, super.key});
  final ZekrModel zekrModel;
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
          ZekrItemHeader(
            count: zekrModel.count,
            zekr: zekrModel.zekr,
          ),
          SizedBox(
            height: 8,
          ),
          ZekrItemBottom(
            type1: zekrModel.type1,
            type2: zekrModel.type2,
          ),
        ],
      ),
    );
  }
}
