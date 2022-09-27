import 'package:flutter/material.dart';
import 'package:proyect1/components/Text.dart';

// ignore: camel_case_types
class titleSection extends StatelessWidget{
  const titleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
              padding: const EdgeInsets.all(9.0),
              child: ClassicText(content: "FINTIMES", textSize: 10),
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
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, left: 9.0, right: 9.0),
      child:ClassicText(content: "Everything about investing plus way more.", textSize: 30)
    );
  }
}

