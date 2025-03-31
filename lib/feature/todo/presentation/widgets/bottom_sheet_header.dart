import 'package:flutter/material.dart';
import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:assignment6/feature/todo/presentation/widgets/back_button.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackButton(onTap: (){ Navigator.pop(context);}),
        const Expanded(flex: 45,child: Text(AppsStrings.task,style: AppTextStyles.headlineLarge,textAlign: TextAlign.center,)),
        const Expanded(flex: 20,child: SizedBox.shrink())
      ],
    );
  }
}
