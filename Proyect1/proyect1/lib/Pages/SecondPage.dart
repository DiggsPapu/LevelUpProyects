import 'package:flutter/material.dart';
import 'package:proyect1/Pages/ThirdPage.dart';
class SecondPage extends StatelessWidget{
  const SecondPage({super.key});
  
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 85, 170, 82),
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
                style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              ListTile(
            leading: const Icon(Icons.u_turn_left),
            title: const Text('First Page'),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/')
            },
          ),
              ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Second Page'),
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/second')
            },
          ),
            ],
          ),
        ),
        body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 85, 170, 82), Color.fromARGB(255, 105, 177, 84), Color.fromARGB(255, 255, 235, 59), Color.fromARGB(255, 255, 209, 60)])),
        child: ListView(
          children: [
            TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () { 
                  Navigator.pushNamed(context, ThirdPage.routeName, arguments: ScreenArguments("Tercera pagina", "Estamos en la tercera pagina"));
                },
                child: const Text('Next Fragment'),
              )
          ],
        ),
      ),
      );
    }
  }