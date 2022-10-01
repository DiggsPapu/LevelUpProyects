import 'package:flutter/material.dart';

import 'package:proyect1/Structure/Structures.dart';
class ThirdPage extends StatelessWidget{
  const ThirdPage({super.key});
  static const routeName = '/ThirdPage';
    @override
    Widget build(BuildContext context) {
      final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
      // TODO: implement build
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellow, Colors.green])),
        child: ListView(
          children: [
            Text(args.title),
            Text(args.message)
            
          ],
        ),
      );
    }
  }
  class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}