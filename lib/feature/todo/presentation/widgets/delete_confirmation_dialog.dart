import 'package:assignment6/core/app_strings.dart';
import 'package:flutter/material.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const DeleteConfirmationDialog({
    super.key,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppsStrings.delete),
      content: Text(AppsStrings.deleteTask),
      actions: [
        TextButton(
          onPressed: onCancel,
          child: Text(AppsStrings.cancel),
        ),
        TextButton(
          onPressed: onConfirm,
          child: Text(AppsStrings.delete),
        ),
      ],
    );
  }
}
