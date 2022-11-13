import 'package:flutter/material.dart';


class SmallButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
 SmallButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
    child: Text(text),
    color: Theme.of(context).primaryColor,);
  }
}