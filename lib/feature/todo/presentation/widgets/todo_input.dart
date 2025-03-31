import 'package:assignment6/feature/todo/presentation/part/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:assignment6/core/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoNameInput extends ConsumerStatefulWidget {
  const TodoNameInput({super.key});

  @override
  ConsumerState<TodoNameInput> createState() => _TodoNameInputState();
}

class _TodoNameInputState extends ConsumerState<TodoNameInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final todo = ref.read(todoProvider);
    _controller = TextEditingController(text: todo.title);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final todoNotifier = ref.read(todoProvider.notifier);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(AppsStrings.name, style: AppTextStyles.titleLarge),
        const SizedBox(width: 17),
        Expanded(
          child: TextField(
            controller: _controller,
            onChanged: (text) => todoNotifier.updateTitle(text),
            decoration: const InputDecoration(
              hintText: AppsStrings.enterName,
              hintStyle: AppTextStyles.hint,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.textFieldBorder),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}