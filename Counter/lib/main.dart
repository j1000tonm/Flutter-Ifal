import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Counter());
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() {
    return CounterView();
  }
}

class CounterView extends State<Counter> {
  var counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                counter.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 46),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: increment, child: const Text('Incrementar')),
                const SizedBox(
                  width: 12,
                ),
                ElevatedButton(
                    onPressed: decrement, child: const Text('Decrementar')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
