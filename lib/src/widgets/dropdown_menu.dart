import 'package:flutter/material.dart';

class TypeDropdownMenu extends StatefulWidget {
  const TypeDropdownMenu({Key? key}) : super(key: key);

  @override
  State<TypeDropdownMenu> createState() => _TypeDropdownMenuState();
}

class _TypeDropdownMenuState extends State<TypeDropdownMenu> {
  late String saveCurrentType;
  static List<String> type = <String>[
    'Pills',
    'Injection',
    'Tea Spoon',
    'Table Spoon',
    'milligram'
  ];
  
//  void saveType(){
// setState(() {
//   saveCurrentType = selectedType;
  
// });
//   }

  String selectedType = type.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedType,
      onChanged: (String? value) {
        setState(() {
          selectedType = value!;
          // saveType();
        });
      },
      items: type.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
    );
  }
}
