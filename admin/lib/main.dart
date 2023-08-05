import 'package:flutter/material.dart';
import 'package:minimal/screens/categories.dart';
import 'package:minimal/screens/category.dart';
import 'package:minimal/screens/login.dart';
import 'package:minimal/screens/menu.dart';
import 'package:minimal/screens/movie.dart';
import 'package:minimal/screens/movies.dart';
import 'package:minimal/utils/routes.dart';

void main() {
  runApp(const Admin());
}

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.login: (ctx) => const Login(),
        Routes.menu: (ctx) => const Menu(),
        Routes.categories: (ctx) => const Categories(),
        Routes.category: (ctx) => const Category(),
        Routes.movies: (ctx) => const Movies(),
        Routes.movie: (ctx) => const Movie(),
      },
    );
  }
}
