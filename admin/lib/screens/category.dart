import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:minimal/components/container.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CategoryScreenState();
  }
}

class _CategoryScreenState extends State<CategoryScreen> {
  String category = '';
  bool isLoggedIn = false;

  final _formkey = GlobalKey<FormState>();

  Future<void> login() async {
    _formkey.currentState?.save();
    if (kDebugMode) {
      print(category);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      includeLogo: false,
      title: 'Adicionar Categoria',
      child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Descrição da categoria'),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) => category = value!),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: login, child: const Text('Adicionar'))),
            ],
          )),
    );
  }
}
