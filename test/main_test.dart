import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  group('FunctionCalculator Tests', () {
    final calculator = FunctionCalculator();

    test('Calculate function for x = 0', () {
      expect(calculator.calculate(0), equals(-9));
    });

    test('Calculate function for x = 1', () {
      expect(calculator.calculate(1), equals(-8.0));
    });

    test('Calculate function for x = 2', () {
      expect(calculator.calculate(2), equals(35));
    });

    test('Tabulate function', () {
      expect(calculator.tabulate(0, 2, 1), equals([-9, -8, 35]));
    });
  });

  group('UI Tests', () {
    testWidgets('AppBar contains correct title', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(
        find.text('<KN-32>: Sasha\'s last Flutter App'),
        findsOneWidget,
      );
    });

    testWidgets('FloatingActionButton has Icon.mouse', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(
        find.byIcon(Icons.mouse),
        findsOneWidget,
      );
    });

    testWidgets('Counter increments by 6', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();

      expect(find.text('6'), findsOneWidget);
    });
  });
}
