import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  
   var currentDiceRoll=1;
  void rollDice()
  {
    setState(() { 
    currentDiceRoll=randomizer.nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/dice-$currentDiceRoll.png',width:200,),
              const SizedBox(height: 30,width: 20,),
              ElevatedButton(onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor:Color.fromARGB(255, 192, 31, 3),
                foregroundColor:const Color.fromARGB(255, 255, 255, 255),
                textStyle:const TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 1.0,
                )
                ),
               child: const Text(
                "Roll The Dice!",
                style: TextStyle(
                  fontFamily: 'Sacramento',
                  letterSpacing: 2.0,
                  fontSize: 28.0
                ),
               ))
            ],
          );
  }
}