import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test_simple/home_screen.dart';

void main() {
  testWidgets('MyWidget has a title and message', (tester) async {
    // Test code goes here.
    await tester.pumpWidget(
      const MaterialApp(
        home: HomeScreen(title: 'T', message: 'M'),
      ),
    );

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
