import 'package:flutter/material.dart';
import './dice_roller.dart';
const startAlignment=Alignment.topLeft;
const endAlignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer({super.key,required this.colours});
  final List<Color> colours;
 
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: colours,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(child: DiceRoller()),
      );
  }
}
