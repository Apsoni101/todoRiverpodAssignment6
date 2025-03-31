import 'package:assignment6/core/app_colors.dart';
import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:assignment6/feature/todo/presentation/part/todo_list_provider.dart';
import 'package:assignment6/feature/todo/presentation/part/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'error_dialog.dart';

class SubmitButton extends ConsumerWidget {
  const SubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo=ref.watch(todoProvider);
    final todoList=ref.read(todoListProvider.notifier);
    return ElevatedButton(
      onPressed: () {
        if (todo.title.isEmpty) {
          showErrorDialog(context, AppsStrings.emptyName);
          return;
        }
        todoList.addTodo(todo);
        Navigator.pop(context);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.black),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 46)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      child: Text(AppsStrings.done, style: AppTextStyles.labelLarge),
    );
  }
}
