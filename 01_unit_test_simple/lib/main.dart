import 'package:flutter/material.dart';

import 'home_screen.dart';

// Testing Flutter apps
// https://docs.flutter.dev/testing
//
// An introduction to unit testing
// https://docs.flutter.dev/cookbook/testing/unit/introduction

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
