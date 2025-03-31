import 'package:assignment6/core/app_strings.dart';
import 'package:flutter/material.dart';

class TimeUtils {
  static String formatTimeOnly(TimeOfDay time) {
    final hour = time.hourOfPeriod.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return "$hour : $minute";
  }
  static String formatTimeWithoutSpaceOnly(TimeOfDay time) {
    final hour = time.hourOfPeriod.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return "$hour:$minute";
  }

  static String getMeridian(TimeOfDay time) {
    return time.period == DayPeriod.am ? AppsStrings.am : AppsStrings.pm;
  }
}