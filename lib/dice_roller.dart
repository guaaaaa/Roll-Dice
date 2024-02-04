import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeImage = 'assets/images/dice-1.png';
  final random = Random();

  void rolldice() {
    int num = random.nextInt(6) + 1;
    // call build() again
    setState(() {
      activeImage = 'assets/images/dice-$num.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          child: const Text('Roll'),
          style: TextButton.styleFrom(foregroundColor: Colors.black),
        ),
      ],
    );
  }
}
