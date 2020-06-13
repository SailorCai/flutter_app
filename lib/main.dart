/*
 * @Author: SailorCai
 * @Date: 2020-06-13 09:49:40
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 10:12:35
 * @FilePath: /flutter_app/lib/main.dart
 */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final ThemeData kIOSTheme = new ThemeData(
  // primarySwatch: Colors.orange,
  primaryColor: Colors.orange,
  accentColor: Colors.green,
);

final ThemeData kAndroidTheme = new ThemeData(
  primarySwatch: Colors.orange,
  accentColor: Colors.green,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kAndroidTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: new Theme(
        // data: new ThemeData(
        //   accentColor: Colors.lightBlueAccent,
        // ),
        data: Theme.of(context).copyWith(disabledColor: Colors.black),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
