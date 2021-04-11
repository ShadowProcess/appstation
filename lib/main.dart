import 'package:appstation/src/college/text/input_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled=true;
    return new MaterialApp(
      title: 'start up',
      home: new Scaffold(
          appBar: AppBar(title: Text("123456789")),
          body: ExampleWidget()),
    );
  }
}





