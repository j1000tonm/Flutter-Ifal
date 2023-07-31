import 'package:flutter/material.dart';
import 'package:minimal/components/category.dart';
import 'package:minimal/data/dummy.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: categories.map((category) {
          return CategoryItem(category: category);
        }).toList());
  }
}
