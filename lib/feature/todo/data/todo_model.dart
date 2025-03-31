
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final bool isCompleted;
  final TimeOfDay? time;
  final bool isToday;

  Todo({
    required this.title,
    this.isCompleted = false,
    required this.time,
    this.isToday = true,
  });

  Todo copyWith({
    String? title,
    bool? isCompleted,
    TimeOfDay? time,
    bool? isToday,
  }) {
    return Todo(
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      time: time ?? this.time,
      isToday: isToday ?? this.isToday,
    );
  }
}
