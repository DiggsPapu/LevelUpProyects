import 'package:flutter/material.dart';
import 'package:proyect1/components/Text.dart';

// ignore: camel_case_types
class titleSection extends StatelessWidget{
  const titleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1.5,
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
              padding: const EdgeInsets.all(9.0),
              child: ClassicText(content: "FINTIMES", textSize: 30),
              ),
            Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:IconButton(
                    alignment: Alignment.topRight,
                    icon: const Icon(Icons.menu),//It is a constant icon
                    onPressed: (){},)//Doesn't do anything while pressing
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
    return Center(
      child:
      ClassicText(content: "Everything about investing plus way more ", textSize: 20)
    );
  }
}

