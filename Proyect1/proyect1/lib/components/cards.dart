import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OutlinedCardExample extends StatelessWidget {
  
    String title = ""; String content = "a";
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
      height: 50.0+82,
      child: Column(children: [
        Row(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: 
            Text(title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
              fontFamily: 'Roboto',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child:IconButton(
            alignment: Alignment.topRight,
            icon: icon,//It is a constant icon
            onPressed: (){},)//Doesn't do anything while pressing
          ),//It is a constant icon       
        ],),
        Row(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(content),
            ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child:IconButton(
            alignment: Alignment.bottomRight,
            icon: const Icon(Icons.arrow_forward),//It is a constant icon
            onPressed: (){},)//Doesn't do anything while pressing
          ),
        ],),
        ],)
      );
  }
}
