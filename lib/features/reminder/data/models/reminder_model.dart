import 'package:flutter/material.dart';

class ReminderModel {
  bool isEnabled;
  final String title;
  final String time;
  final IconData icon;

  ReminderModel({
    required this.isEnabled,
    required this.title,
    required this.time,
    required this.icon,
  });
}
