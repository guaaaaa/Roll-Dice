import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  //constructor
  const StyleText(this.text, {super.key});

  final String text;

  @override
  // Widget is the return type
  Widget build(BuildContext context) {
    return Text(text);
  }
}
