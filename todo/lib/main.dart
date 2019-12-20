import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/repositories/todo_repository.dart';
import 'package:todo/screens/todo_form.dart';
import 'package:todo/screens/todo_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// Expose initial route for deep link
  String get initialRoute => TodoHome.routeName;

  /// Expose providers for dependency injection
  List<SingleChildCloneableWidget> get providers => <SingleChildCloneableWidget>[
        ChangeNotifierProvider<TodoRepository>(
          create: (_) => TodoRepository(),
        ),
      ];

  /// Expose child widget for dependency injection
  Widget get child => MaterialApp(
        title: 'Todo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: initialRoute,
        routes: <String, Widget Function(BuildContext)>{
          TodoHome.routeName: (_) => TodoHome(),
          TodoForm.routeName: (_) => TodoForm(),
        },
      );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: child,
    );
  }
}
