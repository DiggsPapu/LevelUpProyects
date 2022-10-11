import 'package:flutter/material.dart';
import 'package:proyect1/Pages/ThirdPage.dart';
class SecondPage extends StatelessWidget{
  const SecondPage({super.key});
  
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(148, 70, 255, 101),
          centerTitle: false,
          title: const Text(
            "FINTIMES",
            style: TextStyle( 
            fontFamily: 'Roboto',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.transparent,
            color: Colors.black
            ),
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text("Side Menu",
                style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              ListTile(
            leading: const Icon(Icons.input, color: Colors.black),
            title: const Text('Welcome'),
            onTap: () => {
              Navigator.pushNamed(context, '/second')
            },
          ),
            ],
          ),
        ),
        body: Container(
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
      ),
      );
    }
  }