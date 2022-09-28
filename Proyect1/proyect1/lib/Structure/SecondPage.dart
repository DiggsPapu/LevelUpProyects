import 'package:flutter/material.dart';
import 'package:proyect1/Structure/Structures.dart';
class SecondPage extends StatelessWidget{
  const SecondPage({super.key});
  
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellow, Colors.green])),
        child: ListView(
          children: [
            
          ],
        ),
      );
    }
  }