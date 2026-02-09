import 'package:flutter/material.dart';
import 'package:sakina_app/features/Quran_learning/presentation/views/widgets/all_courses_item_body.dart';

class AllCoursesItem extends StatelessWidget {
  const AllCoursesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0x1E0D7E5E),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            width: 20,
          ),
          AllCoursePlayIcon(),
          SizedBox(
            width: 16,
          ),
          Expanded(child: AllCoursesItemBody()),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class AllCoursePlayIcon extends StatelessWidget {
  const AllCoursePlayIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .1302325581395349,
      height: MediaQuery.sizeOf(context).height * .0600858369098712,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.50, 0.00),
          end: Alignment(0.50, 1.00),
          colors: [const Color(0xFFD4AF37), const Color(0xFFC4941F)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: -2,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: -1,
          ),
        ],
      ),
      child: Icon(
        Icons.play_arrow_outlined,
        color: Colors.white,
        size: 34,
      ),
    );
  }
}
