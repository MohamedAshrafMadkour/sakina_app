import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/features/azkar/data/models/counter_model.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/appbar_header.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/counter_row.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key});
  final List<CounterModel> items = [
    CounterModel(count: 0, title: "المفضله"),
    CounterModel(count: 0, title: "مكتملة اليوم"),
    CounterModel(count: 6, title: "الفئات"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
      //  alignment: Alignment.topCenter,
      width: double.infinity,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            LightAppColors.appbarBackground1,
            LightAppColors.appbarBackground2,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppbarHeader(),
          SizedBox(
            height: 20,
          ),
          CounterRow(
            items: items,
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
