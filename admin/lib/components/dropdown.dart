import 'package:flutter/material.dart';

const List<String> list = <String>['Comédia', 'Drama', 'Romance', 'Terror'];

class DropdownButtonCategory extends StatefulWidget {
  const DropdownButtonCategory({super.key});

  @override
  State<DropdownButtonCategory> createState() => _DropdownButtonCategoryState();
}

class _DropdownButtonCategoryState extends State<DropdownButtonCategory> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: DropdownButton<String>(
            isExpanded: true,
            focusNode: FocusNode(canRequestFocus: false),
            value: dropdownValue,
            elevation: 16,
            style: const TextStyle(color: Colors.grey),
            underline: Container(
              height: 2,
              color: Colors.grey,
            ),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
