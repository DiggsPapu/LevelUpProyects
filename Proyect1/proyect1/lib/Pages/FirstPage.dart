import 'package:flutter/material.dart';
import '../components/Text.dart';
import '../components/Cards.dart';
import 'Structures.dart';
class FirstPage extends StatelessWidget{
  const FirstPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Proyect 1",
      home: Scaffold(
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
              Navigator.pushNamed(context, '/second')
            },
          ),
            ],
          ),
        ),
          // ignore: prefer_const_literals_to_create_immutables
          body: Container(
            color: const Color.fromARGB(255, 85, 170, 82),
            child: ListView(
            children: [  
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17.0, top: 50.0),
                child: ClassicText(content: "TOP APP'22", textSize: 15)
                ),
              const motivationalSection(),
              const Divider(
                thickness: 5.0,
                color: Colors.black,
              ),
              OutlinedCardExample(title: "Strategy", content: "INVESTMENT PROCESS",icon: const Icon(Icons.access_alarm_outlined)),
              const Divider(
                thickness: 5.0,
                color: Colors.black,
              ),
              OutlinedCardExample(title: "Team", content: "CHECK OUR EXPERTS",icon: const Icon(Icons.add_a_photo_rounded)),
              const Divider(
                thickness: 5.0,
                color: Colors.black,
              ),
              OutlinedCardExample(title: "WIRED", content: "OUR PARTNERS",icon: const Icon(Icons.hourglass_empty_sharp))       
          ],
          ),
          ) 
      ),
    );
  }
}
