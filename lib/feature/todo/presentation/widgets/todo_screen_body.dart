import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:assignment6/feature/todo/presentation/part/hide_completed_provider.dart';
import 'package:assignment6/feature/todo/presentation/part/todo_list_provider.dart';
import 'package:assignment6/feature/todo/presentation/widgets/today_tile.dart';
import 'package:assignment6/feature/todo/presentation/widgets/todo_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoScreenBody extends ConsumerWidget {
  const TodoScreenBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allTodos = ref.watch(todoListProvider);
    final hideCompleted = ref.watch(hideCompletedProvider);
    final todayTasks = ref
        .watch(todoListProvider.notifier)
        .getTodayTasks(allTodos, hideCompleted);
    final tomorrowTasks =
        ref.watch(todoListProvider.notifier).getTomorrowTasks(allTodos);
    final hasCompletedTasks = ref.watch(todoListProvider.notifier).hasCompletedTodayTasks();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      child: Column(
        children: [
          TodoSection(
            title: AppsStrings.today,
        actionButton: hasCompletedTasks
            ? TextButton(
          onPressed: () {
            ref.read(hideCompletedProvider.notifier).state = !hideCompleted;
          },
          child: Text(
            hideCompleted
                ? AppsStrings.showCompleted
                : AppsStrings.hideCompleted,
            style: AppTextStyles.bodyMedium,
          ),
        )
            : null,

            content: todayTasks.isEmpty
                ? Center(
                    child: Text(
                      AppsStrings.todayNoTask,
                      style: AppTextStyles.bodyMedium,
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: todayTasks.length,
                    itemBuilder: (context, index) {
                      final task = todayTasks[index];
                      return TodayTile(task: task);
                    },
                  ),
          ),
          TodoSection(
              title: AppsStrings.tomorrow,
              content: tomorrowTasks.isEmpty
                  ? Center(
                      child: Text(
                        AppsStrings.tomorrowNoTask,
                        style: AppTextStyles.bodyMedium,
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: tomorrowTasks.length,
                      itemBuilder: (context, index) {
                        final task = tomorrowTasks[index];
                        return TodayTile(task: task);
                      },
                    ))
        ],
      ),
    );
  }
}
