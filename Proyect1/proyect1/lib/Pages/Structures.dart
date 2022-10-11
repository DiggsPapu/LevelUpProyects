import 'package:flutter/material.dart';

import 'SecondPage.dart';

// ignore: camel_case_types
class titleSection extends StatelessWidget{
  const titleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 9.0, left: 9.0, top:9.0, bottom: 50.0),
                  child: Text(
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
            Padding(                 
                    padding: const EdgeInsets.only(right: 9.0, left: 9.0, top:9.0, bottom: 50.0),
                    child:IconButton(
                    alignment: Alignment.topRight,
                    icon: const Icon(Icons.menu),//It is a constant icon
                    onPressed: (){ 
                      Navigator.pushNamed(context, '/second');
                    },)//Doesn't do anything while pressing
                    ),
              ],
            ),
    );
  }
}
// ignore: camel_case_types
class motivationalSection extends StatelessWidget{
  const motivationalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 50.0, left: 9.0, right: 9.0),
      child:
      Text(
        "Introducing the first all-in-one tool to help you put your financial assets in the best possible opportunities",
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 15,
          fontWeight: FontWeight.normal,
          backgroundColor: Colors.transparent,
          color: Colors.black
          ),
        ),
    );
  }
}

