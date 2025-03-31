import 'package:assignment6/core/app_colors.dart';
import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:assignment6/feature/todo/presentation/part/todo_list_provider.dart';
import 'package:assignment6/feature/todo/presentation/widgets/delete_confirmation_dialog.dart';
import 'package:assignment6/utils/time_picker_util.dart';
import 'package:flutter/material.dart';
import 'package:assignment6/feature/todo/data/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodayTile extends ConsumerWidget {
  final Todo task;

  const TodayTile({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formattedTime = task.time != null
        ? "${TimeUtils.formatTimeWithoutSpaceOnly(task.time!)} ${TimeUtils.getMeridian(task.time!)}"
        : "";
    final todoNotifier = ref.watch(todoListProvider.notifier);

    return ListTile(
      horizontalTitleGap: 8,//reducing gap
      contentPadding: EdgeInsets.all(0),
      leading: SizedBox(
        width: 22,
        // Ensures uniform width for both widgets or consistency to avoid
        child: task.isToday
            ? Checkbox(
                value: task.isCompleted,
                onChanged: (bool? value) {
                  todoNotifier.toggleComplete(task);
                  if (value == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppsStrings.markComplete),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                side: const BorderSide(color: AppColors.checkBoxBorder,width: 2),
                activeColor: AppColors.black,
              )
            : Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: AppColors.black,
                ),
              ),
      ),
      title: Text(
        task.title,
        style: task.isCompleted
            ? AppTextStyles.labelSmall.copyWith(
                decoration: TextDecoration.lineThrough,
                decorationColor: AppColors.black.withValues(alpha: 0.1),
                color: AppTextStyles.labelSmall.color?.withValues(alpha: 0.3),
              )
            : AppTextStyles.labelSmall,
      ),
      subtitle: Text(
        formattedTime,
        style: task.isCompleted
            ? AppTextStyles.titleSmall.copyWith(
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
                decorationColor: AppColors.black.withValues(alpha: 0.1),
                color: AppTextStyles.titleSmall.color?.withValues(alpha: 0.3),
              )
            : AppTextStyles.titleSmall,
      ),
      trailing: task.isToday
          ? IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => DeleteConfirmationDialog(
                    onConfirm: () {
                      todoNotifier.removeTodo(task);
                      Navigator.pop(context);
                    },
                    onCancel: () => Navigator.pop(context),
                  ),
                );
              },
              icon: Icon(Icons.delete),
            )
          : null,
    );
  }
}
