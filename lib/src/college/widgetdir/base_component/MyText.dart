import 'package:flutter/material.dart';

///文本1
class MyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Text(
      'hello how are you',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}


///文本2
class MyText2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: 'Hello', // default text style
        children: <TextSpan>[
          TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}