import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Funtimes'),
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
              const Expanded( //It is set constant
                child: Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  'FUNTIMES',//The value of text
                  textAlign: TextAlign.start,//The alignment of text
                  style: TextStyle( fontFamily: 'Roboto',fontSize: 15,fontWeight: FontWeight.bold)//The style and attributes of text
                  ),
                )
                
                ),
                Expanded(//It is not set constant
                  child: Padding(
                    padding: EdgeInsets.all(9.0),
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
            children:  const [
              Expanded( //It is set constant
                child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'TOP APP\'22',//The value of text
                  textAlign: TextAlign.start,//The alignment of text
                  style: TextStyle( fontFamily: 'Roboto',fontSize: 15,fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black, color: Colors.white
                   ),//The style and attributes of text
                  ),
                  )
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: RichText(
              text:const TextSpan(
                text: 'Introducing the first',
                style: TextStyle(fontFamily: 'Roboto',fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: ' all-in-one tool', style: TextStyle(fontFamily: 'Roboto',fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black )),
                  TextSpan(text: ' to help you put your financial assents in the best possible opportunities.', style: TextStyle(fontFamily: 'Roboto',fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black ))
                ]
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Card>[
              Card(
                borderOnForeground: true,
                child: Text(
                  'Strategy',
                  textAlign:TextAlign.start,
                  style: TextStyle(fontFamily: 'Roboto',fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black, backgroundColor: Colors.transparent),
                ),
              ),
              Card(
                borderOnForeground: true,
                child:Text(
                  'Team',
                  textAlign:TextAlign.start,
                  style: TextStyle(fontFamily: 'Roboto',fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black, backgroundColor: Colors.transparent),
                ),
              ),
              Card(
                borderOnForeground: true,
                child:Text(
                  'Wired',
                  textAlign:TextAlign.start,
                  style: TextStyle(fontFamily: 'Roboto',fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black, backgroundColor: Colors.transparent),
                ),
              ),
            ],
          )
            ]
          )
          
          ),
    );
  }
}
