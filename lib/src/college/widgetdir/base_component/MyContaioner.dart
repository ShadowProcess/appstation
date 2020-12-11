import 'package:flutter/material.dart';

///容器样式1
class MyContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber,
        width: 70.0,
        height: 70.0,
      ),
    );
  }
}


///容器样式2
class MyContainer2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        child: Text('Hello World',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white)),
        transform: Matrix4.rotationZ(0.1),
      )
    );
  }
}

class Matrix4 {
  static rotationZ(double d) {}
}

