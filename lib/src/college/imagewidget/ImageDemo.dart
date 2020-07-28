

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new DecoratedBox(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/2.jpg'),
          // ...
        ),
        // ...
      ),
    );

    return MaterialApp(
      title: '123',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Lakes'),
        ),
        body: Image.asset(
          'assets/images/2.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }

}