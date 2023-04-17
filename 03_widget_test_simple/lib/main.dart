import 'package:flutter/material.dart';
import 'package:widget_test_simple/home_screen.dart';

// An introduction to widget testing
// https://docs.flutter.dev/cookbook/testing/widget/introduction

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(
        title: "title",
        message: "message",
      ),
    );
  }
}
