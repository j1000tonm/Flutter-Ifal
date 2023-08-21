import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:minimal/components/container.dart';
import 'package:minimal/utils/routes.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      includeLogo: false,
      title: 'Admin',
      child: Expanded(
        child: GridView(
          padding: const EdgeInsets.only(left: 4, right: 4, top: 20),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 5 / 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
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
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacementNamed(Routes.login);
                },
                child: const Text('Sair')),
          ],
        ),
      ),
    );
  }
}
