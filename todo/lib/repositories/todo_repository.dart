import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/models/todo.dart';

class TodoRepository extends ChangeNotifier {
  final List<Todo> todos = [];

  static const String storeKey = 'todos';

  Future<void> fetchList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String source = prefs.getString(storeKey);

    /// Read data from store instead memory
    if (source != null) {
      todos.clear();
      final List<dynamic> data = jsonDecode(source);
      for (dynamic d in data) {
        todos.add(Todo.fromJson(d));
      }
    }

    /// Sort data according to priority
    todos.sort((Todo a, Todo b) => b.priority.compareTo(a.priority));

    notifyListeners();
  }
}
