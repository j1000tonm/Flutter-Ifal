import 'package:flutter/material.dart';
import 'package:minimal/utils/routes.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () =>
                    {Navigator.of(context).pushNamed(Routes.categories)},
                child: const Text('Listar Categorias')),
            ElevatedButton(
                onPressed: () =>
                    {Navigator.of(context).pushNamed(Routes.movies)},
                child: const Text('Listar Filmes')),
            ElevatedButton(
                onPressed: () =>
                    {Navigator.of(context).pushNamed(Routes.category)},
                child: const Text('Adicionar/Editar Categoria')),
            ElevatedButton(
                onPressed: () =>
                    {Navigator.of(context).pushNamed(Routes.movie)},
                child: const Text('Adicionar/Editar Filme')),
            ElevatedButton(
                onPressed: () =>
                    {Navigator.of(context).pushReplacementNamed(Routes.login)},
                child: const Text('Sair')),
          ],
        ));
  }
}
