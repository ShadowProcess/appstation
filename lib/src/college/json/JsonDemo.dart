import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

///直接解析json
void test() {
  var jsonData = '{ "name" : "Dane", "alias" : "FilledStacks"  }';
  var parsedJson = json.decode(jsonData);
  print('${parsedJson.runtimeType} : $parsedJson');
}

///JSON 用 JsonDecoder 或者加入 dart:convert 依赖 ， UTF8 用 Utf8Decoder

////////////////////////////////////////////////////////////////////////////////////////////
class User {
  String name;
  String alias;

  User(Map<String, dynamic> data) {
    name = data['name'];
    alias = data['alias'];
  }

  User.fromJson(Map<String, dynamic> data)
      : name = data['name'],
        alias = data['alias'];
}
/// 解析对象
void test1() {
  var jsonData = '{ "name" : "Dane", "alias" : "FilledStacks"  }';
  var parsedJson = json.decode(jsonData);
  var user1 = User(parsedJson);
  var user2 = User.fromJson(parsedJson);
  print('${user1.name} is ${user1.alias}');
}
