import 'package:flutter/material.dart';
import 'package:minimal/utils/routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: ElevatedButton(
          onPressed: () =>
              {Navigator.of(context).pushReplacementNamed(Routes.menu)},
          child: const Text('Entrar')),
    );
  }
}
