// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(255, 69, 69, 69);
  static const DEFAULT = Color.fromARGB(255, 98, 98, 98);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callback;

  const Button({
    Key? key,
    required this.text,
    required this.callback,
    this.big = false,
    this.color = DEFAULT,
  }) : super(key: key);

  const Button.big({
    Key? key,
    required this.text,
    required this.callback,
    this.big = true,
    this.color = DEFAULT,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    required this.callback,
    this.big = false,
    this.color = OPERATION,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: color),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
