import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            colors: [Colors.cyanAccent[200]!, Colors.orangeAccent[200]!]),
      ),
    ),
  );
}
