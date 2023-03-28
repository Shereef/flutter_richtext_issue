// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('find rich text with children breaks',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: 'find me please'),
              ],
            ),
          ),
        ),
      ),
    );
    expect(find.text('find me please'), findsOneWidget);
  });

  testWidgets('find rich text with children work around',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: 'find me please'),
              ],
            ),
          ),
        ),
      ),
    );
    expect(
      find.byWidgetPredicate(
        (Widget widget) =>
            widget is RichText && widget.text.toPlainText() == 'find me please',
      ),
      findsOneWidget,
    );
  });

  testWidgets('find rich text with no children breaks',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: RichText(
            text: const TextSpan(
              text: 'find me please',
            ),
          ),
        ),
      ),
    );
    expect(find.text('find me please'), findsOneWidget);
  });

  testWidgets('find rich text with no children work around',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: RichText(
            text: const TextSpan(
              text: 'find me please',
            ),
          ),
        ),
      ),
    );
    expect(
      find.byWidgetPredicate(
        (Widget widget) =>
            widget is RichText && widget.text.toPlainText() == 'find me please',
      ),
      findsOneWidget,
    );
  });
}
