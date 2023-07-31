import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Quiz'),
        ),
      ),
    );
  }
}

// Scaffold é uma classe em flutter que fornece muitos widgets,
// tais como: Drawer, Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, 
// App-Bar, entre outros. Scaffold irá expandir ou ocupar toda a tela do 
// dispositivo. Ele ocupará o espaço disponível.