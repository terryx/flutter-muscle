import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:todo/main.dart';
import 'package:todo/repositories/todo_repository.dart';
import 'package:todo/screens/todo_form.dart';
import 'package:todo/screens/todo_home.dart';

void main() {
  group('TodoForm Screen', () {
    testWidgets('initial inputs are empty', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
    });
  });
}
