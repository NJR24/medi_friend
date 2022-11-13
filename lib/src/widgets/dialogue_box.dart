import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:medi_friend/src/widgets/button.dart';
import 'package:medi_friend/src/widgets/dropdown_menu.dart';


class DialogueBox extends StatelessWidget {
  final controller;
  
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogueBox({Key? key, required this.controller, required this.onSave, required this.onCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
            ),
           TypeDropdownMenu(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallButton(text: "Save", onPressed: onSave),
                SmallButton(text: "Cancel", onPressed: onCancel)

              ],
            )
          ],
        ),
      ),
      
    );
  }
}