import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo/main.dart';
import 'package:todo/screens/todo_form.dart';

class MockMyApp extends MyApp {
  @override
  String get initialRoute => TodoForm.routeName;
}

void main() {
  group('TodoForm Screen', () {
    testWidgets('initial inputs are empty', (WidgetTester tester) async {
      await tester.pumpWidget(MockMyApp());
      expect(find.text('Todo Form'), findsOneWidget);

      final TextFormField titleField = tester.widgetList(find.byType(TextFormField)).first;
      expect(titleField.initialValue, '');
    });
  });
}
