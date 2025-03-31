import 'package:assignment6/feature/todo/presentation/widgets/custom_floating_action_button.dart';
import 'package:assignment6/feature/todo/presentation/widgets/todo_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:assignment6/feature/todo/presentation/widgets/custom_app_bar.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: TodoScreenBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
