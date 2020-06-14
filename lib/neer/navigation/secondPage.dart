/*
 * @Author: SailorCai
 * @Date: 2020-06-13 10:36:53
 * @LastEditors: SailorCai
 * @LastEditTime: 2020-06-13 18:05:27
 * @FilePath: /flutter_app/lib/neer/navigation/secondPage.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String content;

  SecondPage({Key key, this.content}) : super(key: key);

  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: new Center(
        child: Column(children: [
          RaisedButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.of(context).pop('数据');
            },
          ),
          RaisedButton(
            child: Text('返回2'),
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/third');
            },
          ),
          RaisedButton(
            child: Text('返回3'),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/third');
            },
          ),
          RaisedButton(
            child: Text('返回4'),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
          Text(
            '传入的参数：${widget.content != null ? widget.content : ""}',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ]),
      ),
    );
  }
}
