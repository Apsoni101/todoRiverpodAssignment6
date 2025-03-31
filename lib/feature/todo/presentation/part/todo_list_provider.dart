import 'package:assignment6/feature/todo/data/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoListProvider =
    StateNotifierProvider<TodoListNotifier, List<Todo>>((ref) {
  return TodoListNotifier();
});

class TodoListNotifier extends StateNotifier<List<Todo>> {
  TodoListNotifier() : super([]);

  void addTodo(Todo todo) {
    state = [...state, todo];
  }

  void removeTodo(Todo todo) {
    state = state.where((t) => t != todo).toList();
  }

  void toggleComplete(Todo task) {
    state = state
        .map((t) => t == task ? t.copyWith(isCompleted: !t.isCompleted) : t)
        .toList();
  }

  List<Todo> getTomorrowTasks(List<Todo> todos) {
    return todos.where((task) => !task.isToday).toList();
  }

  List<Todo> getTodayTasks(List<Todo> todos, bool hideCompleted) {
    return todos
        .where((task) => task.isToday && (!hideCompleted || !task.isCompleted))
        .toList();
  }
  bool hasCompletedTodayTasks() {
    return state.any((task) => task.isToday && task.isCompleted);
  }



}
