import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showTimePickerModal({
  required BuildContext context,
  required TimeOfDay initialTime,
  required Function(TimeOfDay) onTimeSelected,
}) async {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext builder) {
      return CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        initialDateTime: DateTime(
          2025,
          3,
          20,
          initialTime.hour,
          initialTime.minute,
        ),
        use24hFormat: false,
        onDateTimeChanged: (DateTime newTime) {
          onTimeSelected(TimeOfDay(hour: newTime.hour, minute: newTime.minute));
        },
      );
    },
  );
}
