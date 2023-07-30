import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterView());
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  void increment() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: increment, child: const Text('Incrementar')),
            const SizedBox(
              width: 12,
            ),
            ElevatedButton(
                onPressed: increment, child: const Text('Decrementar')),
          ],
        ),
      ),
    );
  }
}
