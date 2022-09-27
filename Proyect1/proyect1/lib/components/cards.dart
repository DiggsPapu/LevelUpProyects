import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OutlinedCardExample extends StatelessWidget {
  
    String title = ""; String content = "";
    Icon icon =  const Icon(Icons.arrow_forward);
  OutlinedCardExample( {
    required this.title,
    required this.content,
    Key? key, required this.icon,
    }):
    super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 100,
        child: Column(children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(title),
          icon,//It is a constant icon
                  
        ],),
        Row(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(content),
          const Icon(Icons.arrow_forward),
        ],),
        ],)
      );
  }
}
