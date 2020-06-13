/*
 * @Author: SailorCai
 * @Date: 2020-06-06 09:07:17
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 09:43:59
 * @FilePath: /flutter_app/lib/main.dart
 */
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(),
      routes: <String, WidgetBuilder>{
        '/first': (BuildContext context) => FirstScreen(),
        '/second': (BuildContext context) => SecondScreen(),
      },
      initialRoute: '/first',
    );
  }
}

/* class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("firstScreen Title"),
      ),
      body: Center(child: Text("FirstScreen")),
    );
  }
} */

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("SecondScreen Title"),
      ),
      body: Center(child: Text("SecondScreen")),
    );
  }
}

class FirstScreen extends StatefulWidget {
  final Widget child;

  FirstScreen({Key key, this.child}) : super(key: key);

  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<Widget> _children = [
    ScreenWidget('银行'),
    ScreenWidget('联系人'),
    ScreenWidget('音乐'),
  ];
  int _currentIndex = 0;

  void onTapAction(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          "First",
          style: TextStyle(fontSize: 30),
        ),
        // leading: Text('左侧'),
        // actions: [
        //   Text('右侧'),
        // ],
        // centerTitle: false,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapAction,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text("银行"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("联系人"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text("音乐"),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text(
            'Drawer',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  final String text;
  // 构造函数
  ScreenWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: new AppBar(
  //       title: Text(text),
  //     ),
  //     body: Center(
  //       child: Text(
  //         text,
  //         style: TextStyle(fontSize: 40),
  //       ),
  //     ),
  //   );
  // }
}
