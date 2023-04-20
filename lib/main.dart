import 'package:flutter/material.dart';
import './gradient_container.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: GradientContainer(colours:[Color.fromARGB(255, 87, 192, 234),Color.fromARGB(255, 21, 1, 63)]), 
    );
  }
}
