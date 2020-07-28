
import 'package:appstation/src/college/imagewidget/ImageDemo.dart';
import 'package:appstation/src/college/widget/MyAppBar.dart';
import 'package:appstation/src/college/widget/TutoriaHome.dart';

import 'src/college/listview/listview.dart';
import 'src/college/counter//counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled=true;
    return new MaterialApp(
      title: 'start up',
      theme: new ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: new ImageDemo(),
      //debugShowMaterialGrid: true,
    );
  }
}



