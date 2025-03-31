import 'package:assignment6/core/app_colors.dart';
import 'package:assignment6/feature/todo/presentation/part/todo_provider.dart';
import 'package:assignment6/feature/todo/presentation/widgets/show_timepicker_modal.dart';
import 'package:assignment6/utils/time_picker_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';

class TimePickerWidget extends ConsumerWidget {
  const TimePickerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoProvider);
    final todoNotifier = ref.read(todoProvider.notifier);
    final time = todo.time ?? TimeOfDay.now();
    final formattedTime = TimeUtils.formatTimeOnly(time);
    final meridian = TimeUtils.getMeridian(time);

    return Row(
      children: [
        Text(AppsStrings.hour, style: AppTextStyles.titleLarge),
        const SizedBox(width: 26),
        Flexible(
          child: GestureDetector(
            onTap: () {
              showTimePickerModal(
                context: context,
                initialTime: time,
                onTimeSelected: (newTime) {
                  todoNotifier.updateTime(newTime);
                },
              );
            },
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.datePickerBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    formattedTime,
                    style: AppTextStyles.timePicker,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.title,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  child: Text(
                    meridian,
                    style: AppTextStyles.meridian,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
