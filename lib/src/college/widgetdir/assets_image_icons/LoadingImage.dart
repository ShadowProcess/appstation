
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  get kTransparentImage => null;

  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled=true;
    return new MaterialApp(
      title: 'start up',
      home: new Scaffold(
          appBar: AppBar(title: Text("123456789")),
          body: new Stack(
            children: <Widget>[
              new Center(child: new CircularProgressIndicator()),
              new Center(
                child: new FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: "https://static.lianglife.com/20200108.png"),
              )
            ],
          )),
    );
  }
}
