import 'package:flutter/material.dart';
class Input extends StatelessWidget {
  Input( {
    required this.controller,
    Key? key,
    }):
    super(key: key);
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: TextField(
        controller: TextEditingController(),
        maxLines: 5, // <-- SEE HERE
        minLines: 1,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Enter your username',
          contentPadding: EdgeInsets.all(20)
        ),
      )
    );
  }
}