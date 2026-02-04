import 'package:flutter/material.dart';
import 'package:sakina_app/features/azkar/data/models/category_model.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/category_gird_view.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/custom_appbar.dart';

class AzkarViewBody extends StatelessWidget {
  AzkarViewBody({super.key});
  final List<CategoryModel> catogories = [
    CategoryModel(
      colors: [
        Color(0xffFE9A00),
        Color(0xffD08700),
      ],
      imogi: "🌅",
      title: "اذكار الصباح",
      subTitle: "5 ذكر",
    ),
    CategoryModel(
      colors: [
        Color(0xff615FFF),
        Color(0xff9810FA),
      ],
      imogi: "🌙",
      title: "اذكار المساء",
      subTitle: "3 ذكر",
    ),
    CategoryModel(
      colors: [
        Color(0xff2B7FFF),
        Color(0xff00B8DB),
      ],
      imogi: "🌃",
      title: "اذكار النوم",
      subTitle: "3 ذكر",
    ),
    CategoryModel(
      colors: [
        Color(0xff00BC7D),
        Color(0xff009689),
      ],
      imogi: "🕌",
      title: "أذكار بعد الصلاة",
      subTitle: "5 ذكر",
    ),
    CategoryModel(
      colors: [
        Color(0xffFF2056),
        Color(0xffE60076),
      ],
      imogi: "🤲",
      title: "أدعية يومية",
      subTitle: "3 ذكر",
    ),
    CategoryModel(
      colors: [
        Color(0xffFE9A00),
        Color(0xffD08700),
      ],
      imogi: "📖",
      title: "آيات للحفظ",
      subTitle: "3 ايات",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomAppbar(),
          Positioned(
            top: MediaQuery.sizeOf(context).height * .18,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CategoryGirdView(
                items: catogories,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
