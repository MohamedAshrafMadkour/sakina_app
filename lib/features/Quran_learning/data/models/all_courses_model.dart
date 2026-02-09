import 'dart:ffi';

class AllCoursesModel {
  final String type;
  final String title;
  final double time;
  final double allSecionsCount;
  final double completeSesionsCount;
  late double Presentage = completeSesionsCount / allSecionsCount;

  AllCoursesModel({
    required this.type,
    required this.title,
    required this.time,
    required this.allSecionsCount,
    required this.completeSesionsCount,
  });
}
