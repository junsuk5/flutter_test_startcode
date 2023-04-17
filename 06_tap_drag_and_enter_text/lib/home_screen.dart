import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final todos = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              todos.add(controller.text);
              controller.clear();
            });
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (context, int index) {
                    final todo = todos[index];
                    return Dismissible(
                      key: Key("$todo$index"),
                      background: Container(
                        color: Colors.red,
                      ),
                      onDismissed: (direction) {
                        //チュートリアルではsetStateがないがこれを忘れるとDismiss時にRangeErrorになる
                        setState(() {
                          todos.removeAt(index);
                        });
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(todo),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
