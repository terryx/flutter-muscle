import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo/main.dart';

void main() {
  group('TodoHome Screen', () {
    testWidgets('can navigate to todo form screen', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text('Todo Home'), findsOneWidget);

      final Finder fab = find.byIcon(Icons.add);
      await tester.tap(fab);
      await tester.pumpAndSettle();

      expect(find.text('Todo Form'), findsOneWidget);
    });
  });
}
