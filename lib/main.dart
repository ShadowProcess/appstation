//此行代码作用是导入了Material UI组件库。Material是一种标准的移动端和web端的视觉设计语言，
// Flutter默认提供了一套丰富的Material风格的UI组件。
import 'package:flutter/material.dart';


//应用入口
void main() {
  runApp(MyApp());
}

//这里相当于Android类的Application类 StatelessWidget表示无状态组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    /**
     * MaterialApp表名App的风格是Material Design风格的
     * 这里我们可以设置App的主题相关属性，比如颜色，按钮风格等等，类似于Android中的style文件
     */
    return MaterialApp(
      title: 'Flutter Demo',

      /**
       * 主题相关配置
       * 这里我们可以配合App整体的主题样式，比如整体颜色，控件默认的样式等
       */
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        /**
         * 这个地方就类似与Android中的style文件配置，主要就是主题的配置
         */
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      /**
       * home指定启动后显示的界面
       * 类似AndroidManifest中配置启动界面
       */
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


/// StatefulWidget是一个有状态的控件，如果你的页面需要更新UI，那么该页面就要继承StatefulWidget
/// 如果只是一个纯展示的页面，只要继承自StatefulWidget即可
/// MyHomePage在上面已经被指定为启动页面
/// 该页面有一个计数的逻辑，会更新UI，所以需要继承StatefulWidget
class MyHomePage extends StatefulWidget {
  /// Dart中的构造方法 {}里面的参数表示可选参数，跟kotlin概念差不多
  /// this.title默认会把值赋给下面的参数title
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  ///声明一个变量 用final修饰表示只能赋一次值
  ///在上面的构造方法中已经有赋值操作了，所以后面我们就不能再更改title的值了
  final String title;

  ///所有继承自StatefulWidget的空间都要重写createState()这个方法
  ///可以理解为指定该页面的状态是由谁来控制的
  ///在Dart中下划线开头声明的变量和方法，其默认访问权限就是私有的
  ///类似java中的private修饰，只能在类的内部访问
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



///MyHomePage是应用的首页，它继承自StatefulWidget类，表示它是一个有状态的widget（Stateful widget）。
///现在，我们可以简单认为Stateful widget 和Stateless widget有两点不同：
//Stateful widget可以拥有状态，这些状态在widget生命周期中是可以变的，而Stateless widget是不可变的。
//
//Stateful widget至少由两个类组成：
//      一个StatefulWidget类。
//      一个State类；StatefulWidget类本身是不变的，但是 State类中持有的状态在widget生命周期中可能会发生变化。
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
