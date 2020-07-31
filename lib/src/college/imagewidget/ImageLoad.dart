import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


///JSON 用 JsonDecoder 或者加入 dart:convert 依赖 ， UTF8 用 Utf8Decoder
class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Center(child: new CircularProgressIndicator()),
        new Center(
            child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: "https://static.lianglife.com/20200108.png")
        )
      ],
    );
  }
}