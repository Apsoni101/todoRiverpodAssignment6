import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:flutter/material.dart';

void showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(AppsStrings.error),
      content: Text(message,style: AppTextStyles.labelSmall,),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(AppsStrings.ok,style: AppTextStyles.labelSmall,),
        ),
      ],
    ),
  );
}
