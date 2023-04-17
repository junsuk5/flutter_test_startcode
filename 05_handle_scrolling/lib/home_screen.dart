import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> items;

  const HomeScreen({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Add a key to the ListView. This makes it possible to
        // find the list and scroll through it in the tests.
        key: const Key("long_list"),
        itemCount: items.length,
        itemBuilder: (context, int index) {
          return Card(
            child: ListTile(
              title: Text(items[index]),
              // Add a key to the Text widget for each item. This makes
              // it possible to look for a particular item in the list
              // and verify that the text is correct
              key: Key("item_${index}_text"),
            ),
          );
        },
      ),
    );
  }
}
