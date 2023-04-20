import 'package:flutter/material.dart';

class Textt extends StatelessWidget {
  const Textt(this.otext,{super.key});
  final String otext;
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Text(otext,
          style: const TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic ,
            fontSize: 50.0,
            fontFamily: 'Montserrat',
            color: Colors.white
          ),
          )
        );
  }
}