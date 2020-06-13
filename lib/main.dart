/*
 * @Author: SailorCai
 * @Date: 2020-06-06 09:07:17
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-08 22:09:01
 * @FilePath: /flutter_app/lib/main.dart
 */
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'components/buttonTask.dart';
import 'components/containerTask.dart';
import 'components/gestureTask.dart';
import 'components/imageTask.dart';
import 'components/listviewTask.dart';

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
      home: MyHomePage(title: 'flutter class'),
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

    httpFunction2();
  }

  //  https://randomuser.me/api/?results=30
  httpFunction1() {
    // http.post(url)

    var url = 'https://randomuser.me/api/?results=30';
    http.get(url).then((response) {
      print("data: ${response}");
    });
  }

  httpFunction2() async {
    var httpClient = new HttpClient();
    var url = 'https://randomuser.me/api/?results=30';
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    var jsonString = await response.transform(utf8.decoder).join();
    print("data: ${jsonString}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Center(
      //     child: Image.asset(
      //   'assets/images/avatar.jpeg',
      //   width: 120,
      //   height: 120,
      // )),
      // body: ImageTask(),
      // body: ButtonTask(),
      // body: ContainerTask(),
      // body: GestureTask(),
      body: ListViewTask(),
    );
  }
}
