import 'package:flutter/material.dart';
import 'package:minimal/components/alert.dart';
import 'package:minimal/components/container.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<Color> colors = <Color>[Colors.blue, Colors.yellow, Colors.green];

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      includeLogo: false,
      title: 'Categorias',
      child: Expanded(
          child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              _showMyDialog(context);
            },
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      colors[index].withOpacity(0.5),
                      colors[index]
                    ])),
                child: Center(
                  child: Text('Categoria ${entries[index]}',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18)),
                )),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      )),
    );
  }
}
