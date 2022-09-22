import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OutlinedCardExample extends StatelessWidget {
  String title = ""; String content = "";
  OutlinedCardExample( {
    required this.title,
    required this.content,
    Key? key,
    }):
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 100,
        child: Column(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(title),
          const Icon(Icons.menu),//It is a constant icon
                  
        ],),
        Row(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(content),
          const Icon(Icons.arrow_forward)
        ],),
        ],)
      );
  }
}
