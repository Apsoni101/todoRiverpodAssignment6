


import 'package:assignment6/feature/todo/data/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final todoProvider = StateNotifierProvider<TodoNotifier, Todo>((ref) {
  return TodoNotifier();
});


class TodoNotifier extends StateNotifier<Todo> {
  TodoNotifier() : super(Todo(title: '', time: TimeOfDay.now()));

  void updateTime(TimeOfDay time) {
    state = state.copyWith(time: time);
  }

  void updateIsToday(bool isToday) {
    state = state.copyWith(isToday: isToday);
  }

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void resetTodo(){
    state = Todo(title: '', time: TimeOfDay.now(), isToday: true, isCompleted: false);
  }

}
