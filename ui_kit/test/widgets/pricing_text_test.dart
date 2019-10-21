import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_kit/widgets/pricing_text.dart';

void main() {
  group('PricingText', () {
    testWidgets('show symbol at left side of text', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PricingText(symbol: r'S$', text: r'S$100,000.00'),
          ),
        ),
      );

      // Verify that Align start at left
      final Finder pricingText = find.byType(Align).last;
      final Offset text = tester.getTopLeft(pricingText);
      expect(text.dx, 0.0);

      final Iterable<Text> texts = tester.widgetList(find.byType(Text));
      expect(texts.first.data, r'S$');
      expect(texts.last.data, '100,000.00');
    });

    testWidgets('show symbol at right side of text', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PricingText(symbol: r'S$', text: r'100,000.00 S$'),
          ),
        ),
      );

      // Verify that Align start at right
      final Finder pricingText = find.byType(Align).last;
      final Offset text = tester.getTopRight(pricingText);
      expect(text.dx > 0.0, true);

      final Iterable<Text> texts = tester.widgetList(find.byType(Text));
      expect(texts.last.data, r'S$');
      expect(texts.first.data, '100,000.00');
    });
  });
}
