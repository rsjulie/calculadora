import 'package:calculadora/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons,
      ),
    );
  }
}
