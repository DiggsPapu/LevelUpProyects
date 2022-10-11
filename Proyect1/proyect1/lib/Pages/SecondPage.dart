import 'package:flutter/material.dart';
import 'package:proyect1/Pages/Structures.dart';
import 'package:proyect1/Pages/ThirdPage.dart';
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
            TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () { 
                  Navigator.pushNamed(context, ThirdPage.routeName, arguments: ScreenArguments("Tercera pagina", "Estamos en la tercera pagina"));
                },
                child: Text('Next Fragment'),
              )
          ],
        ),
      );
    }
  }