import 'package:assignment6/core/app_text_styles.dart';
import 'package:assignment6/feature/todo/presentation/widgets/submit_button.dart';
import 'package:assignment6/feature/todo/presentation/widgets/todo_input.dart';
import 'package:assignment6/feature/todo/presentation/widgets/time_picker.dart';
import 'package:assignment6/feature/todo/presentation/widgets/today_switch.dart';
import 'package:flutter/material.dart';
import 'package:assignment6/core/app_colors.dart';
import 'package:assignment6/core/app_strings.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Expanded(//used so that container can take entire space with color
      child: Container(
        color: AppColors.bottomSheetBg,
        padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 37),
        //calculation done for nested padding and then used here padding i.e added padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(AppsStrings.addTask, style: AppTextStyles.displaySmall),
            const SizedBox(height: 20),
            const TodoNameInput(),
            const SizedBox(height: 30),
            const TimePickerWidget(),
            const SizedBox(height: 30),
            const TodaySwitch(),
            const SizedBox(height: 62),
            const SubmitButton(),
            const SizedBox(height: 14),
            const Text(
              AppsStrings.note,
              style: AppTextStyles.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
