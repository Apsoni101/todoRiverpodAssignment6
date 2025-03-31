import 'package:assignment6/feature/todo/presentation/widgets/bottom_sheet_body.dart';
import 'package:assignment6/feature/todo/presentation/widgets/bottom_sheet_header.dart';
import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BottomSheetHeader(),
          Divider(height: 1,),
          BottomSheetBody()
        ],
      ),
    );
  }
}
