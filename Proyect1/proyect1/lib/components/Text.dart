import 'package:flutter/material.dart';
class TripleText extends StatelessWidget{
  String text1="",text2="",text3="";
  TripleText({
    required this.text1, required this.text2, required this.text3,
    Key? key,
  }):
  super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      RichText(
              text:TextSpan(
                text: text1,
                style: const TextStyle(fontFamily: 'Roboto',fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: text2, style: const TextStyle(fontFamily: 'Roboto',fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black )),
                  TextSpan(text: text3, style: const TextStyle(fontFamily: 'Roboto',fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black ))
                ]
              )
            ) 
      );
  }
}
class ClassicText extends StatelessWidget{
  String content = "";
  double textSize=0;

  ClassicText({
    required this.content,
    required this.textSize,
    Key? key}
    ): 
    super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    return Text(
                  content,//The value of text
                  textAlign: TextAlign.start,//The alignment of text
                  style: TextStyle( 
                    fontFamily: 'Roboto',
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black,
                  color: Colors.white
                   ),//The style and attributes of text
    );
  } 
}