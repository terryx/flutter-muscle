import 'package:flutter/material.dart';
import 'package:todo/screens/todo_form.dart';

class TodoHome extends StatefulWidget {
  static const String routeName = 'todo_home';

  @override
  _TodoHomeState createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Home'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, TodoForm.routeName),
      ),
    );
  }
}
