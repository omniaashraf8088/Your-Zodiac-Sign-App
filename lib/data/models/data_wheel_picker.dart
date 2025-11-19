import 'package:flutter/material.dart';

class DateWheelPicker {
  final DateTime selectedDate;
  final List<DateTime> dates;
  final int selectedIndex;
  final ValueChanged<DateTime> onDateChanged;

  DateWheelPicker({
    required this.selectedDate,
    required this.dates,
    required this.selectedIndex,
    required this.onDateChanged,
  });
}
