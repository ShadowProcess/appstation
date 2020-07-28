

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '123',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Lakes'),
        ),
        body: Image.asset(
          'assets/images/1.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

}