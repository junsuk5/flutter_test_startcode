import 'package:flutter/material.dart';

import 'home_screen.dart';

// Performance profiling
// https://docs.flutter.dev/cookbook/testing/integration/profiling

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(
        items: List.generate(10000, (i) => "Item $i"),
      ),
    );
  }
}
