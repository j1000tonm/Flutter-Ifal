import 'package:flutter/material.dart';
import 'package:minimal/screens/categories.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Filmes'),
        ),
        body: const CategoriesScreen(),
      ),
    );
  }
}
