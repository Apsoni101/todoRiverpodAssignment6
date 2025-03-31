import 'package:assignment6/feature/todo/presentation/part/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:assignment6/core/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodaySwitch extends ConsumerWidget {

  const TodaySwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppsStrings.today, style: AppTextStyles.titleLarge),
        Switch(
          value: todo.isToday ,
          thumbColor: WidgetStateProperty.all(AppColors.title),
          activeTrackColor: AppColors.mediumGreen,
          onChanged: (newValue) {
            ref.read(todoProvider.notifier).updateIsToday(newValue);
          },
        ),
      ],
    );
  }
}
