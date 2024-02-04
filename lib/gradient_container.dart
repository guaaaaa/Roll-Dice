import 'package:flutter/material.dart';
import 'style_text.dart';
import 'dice_roller.dart';

const start = Alignment.topLeft;
const end = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //constructor
  GradientContainer({super.key, required this.colors});

  /* Additioinal constructor functions
  GradientContainer.name({super.key, required this.colors});
  */

  final List<Color> colors;

  @override
  // Widget is the return type
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: start,
          end: end,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
