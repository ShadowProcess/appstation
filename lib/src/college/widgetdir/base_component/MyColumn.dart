import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        Text('The code word is ‘Rochambeau,’ dig me?'),
        Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        )
      ],
    );
  }

}