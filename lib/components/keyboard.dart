import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callback;

  const Keyboard({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.big(text: 'AC', callback: callback, color: Button.DARK),
              Button(text: '%', callback: callback, color: Button.DARK),
              Button.operation(text: '/', callback: callback),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: '7', callback: callback),
              Button(text: '8', callback: callback),
              Button(text: '9', callback: callback),
              Button.operation(text: 'x', callback: callback),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: '4', callback: callback),
              Button(text: '5', callback: callback),
              Button(text: '6', callback: callback),
              Button.operation(text: '-', callback: callback),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(text: '1', callback: callback),
              Button(text: '2', callback: callback),
              Button(text: '3', callback: callback),
              Button.operation(text: '+', callback: callback),
            ],
          ),
          ButtonRow(
            buttons: [
              Button.big(text: '0', callback: callback),
              Button(text: '.', callback: callback),
              Button.operation(text: '=', callback: callback),
            ],
          ),
        ],
      ),
    );
  }
}
