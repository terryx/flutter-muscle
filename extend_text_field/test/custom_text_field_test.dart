// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:extend_text_field/custom_text_field.dart';

Widget overlay({Widget child}) {
  return MaterialApp(
    home: Scaffold(
      body: child,
    ),
  );
}

void main() {
  testWidgets('Text Field test', (WidgetTester tester) async {
    String textFieldValue;

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      overlay(child: CustomTextField(
        onChanged: (String value) {
          textFieldValue = value;
        },
      )),
    );

    final String testValue = 'hello';
    await tester.enterText(find.byType(CustomTextField), testValue);
    expect(textFieldValue, equals(testValue));

    await tester.pump();
  });
}
