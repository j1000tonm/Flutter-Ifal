import 'package:flutter/material.dart';
import 'package:minimal/models/category.dart';
import 'package:minimal/screens/movies.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MoviesScreen(
                  category: category,
                )));
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
                colors: [category.color.withOpacity(0.5), category.color],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight)),
        child: Text(category.title,
            style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
