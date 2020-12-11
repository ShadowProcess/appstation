import 'package:appstation/src/college/imagewidget/ImageDemo.dart';
import 'package:appstation/src/college/imagewidget/ImageLoad.dart';
import 'package:appstation/src/college/text/input_text.dart';
import 'package:appstation/src/college/widgetdir/animation_motion/am1.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyAppBar.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyButton.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyColumn.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyContaioner.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyIcon.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyPlaceholder.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyRow.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyScaffold.dart';
import 'package:appstation/src/college/widgetdir/base_component/MyText.dart';
import 'package:appstation/src/college/widgetdir/material_components/MyAppBar1.dart';
import 'package:appstation/src/college/widgetdir/material_components/MyBottomNavigation.dart';
import 'package:appstation/src/college/widgetdir/material_components/MyDrawer.dart';
import 'file:///D:/DevelopmentSoftWare/androidWorkSpace/appstation/lib/src/college/widgetdir/popupmenu/popupmenuButton.dart';
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
      home: new Scaffold(
          appBar: AppBar(title: Text("123456789")),
          body: ExampleWidget()),
    );
  }
}





