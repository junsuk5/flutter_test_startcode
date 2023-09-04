import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tap_drag_and_enter_text/main.dart';

void main() {
  testWidgets('Add ~~', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Enter 'hi' into the TextField.
    await tester.enterText(find.byType(TextField), 'hi');

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('hi'), findsOneWidget);

    await tester.drag(find.byType(Dismissible), const Offset(500, 0));
    await tester.pumpAndSettle();

    expect(find.text('hi'), findsNothing);
  });
}