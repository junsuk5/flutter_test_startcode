import 'package:flutter/material.dart';
import 'package:unit_test_simple/counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '버튼을 누른 횟수',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _countUp(),
                  child: const Text("증가"),
                ),
                ElevatedButton(
                  onPressed: () => _countDown(),
                  child: const Text("감소"),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _clear(),
        tooltip: 'Increment',
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void _countUp() {
    setState(() {
      counter.countUp();
    });
  }

  void _countDown() {
    setState(() {
      counter.countDown();
    });
  }

  void _clear() {
    setState(() {
      counter.clear();
    });
  }
}
