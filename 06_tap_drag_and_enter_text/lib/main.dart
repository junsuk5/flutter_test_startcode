import 'package:flutter/material.dart';
import 'package:tap_drag_and_enter_text/home_screen.dart';

// Tap, drag, and enter text
// https://docs.flutter.dev/cookbook/testing/widget/tap-drag

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
