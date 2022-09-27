import 'package:flutter/material.dart';
import 'package:proyect1/Structure/Structures.dart';
import 'package:proyect1/components/Text.dart';
import 'components/cards.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyect 1 - Selected GUI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const app(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class app extends StatelessWidget{
  const app ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Proyect 1",
      
      home: Scaffold(
          // ignore: prefer_const_literals_to_create_immutables
          body: Container(
            color: Color.fromARGB(209, 70, 255, 101),
            child: ListView(
            children: [  
              const titleSection().build(context), 
              Padding(
                padding: const EdgeInsets.only(left: 9.0, right: 9.0),
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
              OutlinedCardExample(title: "Team", content: "CHECK OUR EXPERTS",icon: const Icon(Icons.abc_outlined)),
              const Divider(
                thickness: 5.0,
                color: Colors.black,
              ),
              OutlinedCardExample(title: "WIRED", content: "OUR PARTNERS",icon: const Icon(Icons.abc_outlined))       
          ],
          ),
          ) 
      ),
    );
  }

}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellow, Colors.green])),
      child: Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
          backgroundColor: Colors.transparent,
          body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
               Expanded( //It is set constant
                child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: ClassicText(content: "FUNTIMES",textSize: 15)
                )
                
                ),
                Expanded(//It is not set constant
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:IconButton(
                    alignment: Alignment.topRight,//The alignment
                    icon: const Icon(Icons.menu),//It is a constant icon
                    onPressed: (){},)//Doesn't do anything while pressing
                    ),
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Expanded( //It is set constant
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClassicText(content: "TOP APP'22", textSize: 15)
                  )
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: 
              TripleText(
                text1: 'Introducing the first',
                text2: ' all-in-one tool',
                text3: ' to help you put your financial assents in the best possible opportunities.')
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlinedCardExample(title: "Strategy", content: "INVESTMENT PROCESS",icon: Icon(Icons.abc_outlined)),
              OutlinedCardExample(title: "Team", content: "CHECK OUR EXPERTS",icon: Icon(Icons.abc_outlined)),
              OutlinedCardExample(title: "Wired", content: "OUR PARTNERS",icon: Icon(Icons.abc_outlined))
            ],
          )
            ]
          )
          
          ),
    );
  }
}
