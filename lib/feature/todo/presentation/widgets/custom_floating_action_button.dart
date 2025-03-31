
import 'package:assignment6/core/app_colors.dart';
import 'package:assignment6/feature/todo/presentation/widgets/add_task_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget{
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: AppColors.floatingActionButtonBg,
      onPressed: () => showModalBottomSheet(
        backgroundColor: AppColors.bottomSheetHeader,
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        builder: (context) => AddTaskBottomSheet(),
      ),
      child: Icon(Icons.add, size: 32, color: AppColors.title),
    );
  }

}