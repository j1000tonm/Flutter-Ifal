import 'package:flutter/material.dart';
import 'package:minimal/models/category.dart';

class MoviesScreen extends StatelessWidget {
  final Category category;
  const MoviesScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category.title),
      ),
      body: const Text('Lista de filmes...'),
    );
  }
}
