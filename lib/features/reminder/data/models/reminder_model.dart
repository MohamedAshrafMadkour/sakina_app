import 'dart:convert';
import 'package:flutter/material.dart';

class ReminderModel {
  final int? id; // 👈 مهم

  bool isEnabled;
  final String title;
  final String time;
  final int iconCode;
  final List<Color> colors; // ✅

  ReminderModel({
    this.id,
    required this.isEnabled,
    required this.title,
    required this.time,
    required this.iconCode,
    required this.colors,
  });

  // للتحويل إلى Map (للتخزين)
  Map<String, dynamic> toMap() {
    return {
      'Id': id,
      'isEnabled': isEnabled ? 1 : 0,
      'title': title,
      'time': time,
      'icon': iconCode,
      'colors': jsonEncode(colors.map((c) => c.value).toList()),
    };
  }

  // للقراءة من DB
  factory ReminderModel.fromMap(Map<String, dynamic> map) {
    return ReminderModel(
      id: map['Id'],
      isEnabled: map['isEnabled'] == 1,
      title: map['title'],
      time: map['time'],
      iconCode: map['icon'],
      colors: (jsonDecode(map['colors']) as List).map((e) => Color(e)).toList(),
    );
  }
  @override
  String toString() {
    return '''
Reminder(
  title: $title,
  time: $time,
  enabled: $isEnabled,
  icon: $iconCode,
  colors: ${colors.map((c) => c.value).toList()}
)
''';
  }

  // IconData للعرض
  IconData get icon => IconData(iconCode, fontFamily: 'MaterialIcons');
}
